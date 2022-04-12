// Created by Muhammed Tolkinov on 17-December-2021

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:fitness_uncensored/domain/core/upload_file_types.dart';
import 'package:image_picker/image_picker.dart';

import 'package:fitness_uncensored/utils/get_it.dart';

import '../repository/api_list.dart';
import '../repository/models/user_repository_model.dart';
import 'refresh_token_request.dart';

class GetOrUploadMediaApi {

  Future<String> getPhotoFromDevice() async {
    try {
      final ImagePicker _imagePicker = ImagePicker();
      final XFile? _xFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
        maxWidth: 1280,
        maxHeight: 1280
      );
      if (_xFile != null) {
        return _xFile.path;
      }
      else {
        return '';
      }
    } catch(e) {
      throw e.toString();
    }
  }

  Future<List<int>> uploadMedia({
    required UploadFileTypes uploadFileTypes,
    required List<String> images,
  }) async {
    try {
      final FormData formData = FormData();
      formData.fields.add(MapEntry(
          'image_type', EnumToString.convertToString(uploadFileTypes)));

      for (var file in images) {
        formData.files
            .add(MapEntry('images', await MultipartFile.fromFile(file)));
      }

      final Response response = await getIt.get<Dio>().post(
            APIList.uploadMedia,
            options: Options(
                headers: {
                  HttpHeaders.authorizationHeader:
                      "Bearer ${UserRepositoryModel.accessToken}"
                },
                validateStatus: (status) =>
                    status! <= HttpStatus.internalServerError),
            data: formData,
          );

      if (response.statusCode == HttpStatus.ok) {
        final List<int> imagesId = [];
        final List result = response.data;

        for (int i = 0; i < result.length; i++) {
          imagesId.add(result[i]['id']);
        }

        return imagesId;
      } else if (response.statusCode == HttpStatus.unauthorized) {
        final bool result = await getIt.get<RefreshTokenRequest>().refresh();

        if (result) {
          return await uploadMedia(
              uploadFileTypes: uploadFileTypes, images: images);
        } else {
          return [];
        }
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

}
