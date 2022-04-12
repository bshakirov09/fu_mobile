// Created by Muhammed Tolkinov on 28-December-2021

class ServerFailure {

  static String getFailureMessage({
    required Map<String, dynamic> error,
    required int? statusCode
  }) {
    try {
      return error['errors']?[0]?['message'];
    } catch(e) {
      return 'Something went wrong';
    }
  }

}
