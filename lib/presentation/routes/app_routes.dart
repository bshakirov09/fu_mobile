// Created by Muhammed Tolkinov on 09-December-2021

import 'package:fitness_uncensored/application/progress/journalBloc/journal_bloc.dart';
import 'package:fitness_uncensored/application/progress/photoBloc/photo_bloc_bloc.dart';
import 'package:fitness_uncensored/presentation/pages/profile/profile_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/add_weight_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/add_journal_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/all_notes_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/journal/note_single_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/photos/add_photo.dart';
import 'package:fitness_uncensored/presentation/pages/progress/photos/help_photo_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/photos/photo_detail_sort_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/photos/photos_page.dart';
import 'package:fitness_uncensored/presentation/pages/progress/point_chart/progress_single.dart';
import 'package:fitness_uncensored/presentation/pages/progress/progress_main_page.dart';
import 'package:fitness_uncensored/presentation/pages/workout/workout_main_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitness_uncensored/application/change_password/change_password_bloc.dart';

import '../pages/faq/faq_page.dart';
import '../pages/workout/workout_day_detail_page.dart';
import '../pages/workout/workout_splits_roadmap_page.dart';
import '../pages/blog/blog_detail_page.dart';
import '../pages/blog/blog_search_page.dart';
import '../pages/edit_profile/notification_settings_page.dart';
import '../pages/auth/forgot_password/reset_password_page.dart';
import '../pages/auth/forgot_password/verify_code_page.dart';
import '../pages/auth/forgot_password/forgot_password_page.dart';
import '../pages/edit_profile/birthday_settings_page.dart';
import '../pages/edit_profile/height_settings_page.dart';
import '../pages/edit_profile/password_settings_page.dart';
import '../pages/edit_profile/edit_profile_page.dart';
import '../pages/edit_profile/weight_settings_page.dart';
import '../pages/notification/notification_page.dart';
import '../pages/privacy/privacy_page.dart';
import '../pages/terms_and_conditions/terms_and_conditions_page.dart';
import '../pages/main/main_page.dart';
import '../pages/auth/sign_in/sign_in_page.dart';
import '../pages/recipes/recipes_category_page.dart';
import '../pages/recipes/recipe_single_page.dart';
import '../pages/auth/sign_up/sign_up_page.dart';

class AppRoutes {
  const AppRoutes._();

  static MaterialPageRoute main() {
    return MaterialPageRoute(builder: (_) => const MainPage());
  }

  static MaterialPageRoute signUp() {
    return MaterialPageRoute(builder: (_) => const SignUpPage());
  }

  static MaterialPageRoute recipeCategory({
    required int categoryId,
    required String categoryName,
  }) {
    return MaterialPageRoute(
        builder: (_) => RecipesCategoryPage(
              categoryId: categoryId,
              headlineText: categoryName,
            ));
  }

  static MaterialPageRoute recipeDetail({
    required String headlineText,
    required int categoryId,
  }) {
    return MaterialPageRoute(
        builder: (_) => RecipeSinglePage(
              categoryId: categoryId,
              headlineText: headlineText,
            ));
  }

  static MaterialPageRoute editProfile() {
    return MaterialPageRoute(builder: (_) => const EditProfilePage());
  }

  static MaterialPageRoute heightSettings() {
    return MaterialPageRoute(builder: (_) => const HeightSettingsPage());
  }

  static MaterialPageRoute weightSettings() {
    return MaterialPageRoute(builder: (_) => const WeightSettingsPage());
  }

  static MaterialPageRoute birthdaySettings() {
    return MaterialPageRoute(builder: (_) => const BirthdaySettingsPage());
  }

  static MaterialPageRoute changePassword() {
    return MaterialPageRoute(
        builder: (_) => BlocProvider<ChangePasswordBloc>(
              create: (_) => ChangePasswordBloc(),
              child: const PasswordSettingsPage(),
            ));
  }

  static MaterialPageRoute notification() {
    return MaterialPageRoute(builder: (_) => const NotificationPage());
  }

  static MaterialPageRoute termsAndConditions() {
    return MaterialPageRoute(builder: (_) => const TermsAndConditionsPage());
  }

  static MaterialPageRoute privacyPolicy() {
    return MaterialPageRoute(builder: (_) => const PrivacyPage());
  }

  static MaterialPageRoute faq() {
    return MaterialPageRoute(builder: (_) => const FAQPage());
  }

  static MaterialPageRoute signIn() {
    return MaterialPageRoute(builder: (_) => const SignInPage());
  }

  static MaterialPageRoute forgotPassword() {
    return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
  }

  static MaterialPageRoute verifyEmailCode() {
    return MaterialPageRoute(builder: (_) => const VerifyCodePage());
  }

  static MaterialPageRoute resetPassword() {
    return MaterialPageRoute(builder: (_) => const ResetPasswordPage());
  }

  static MaterialPageRoute notificationSettings() {
    return MaterialPageRoute(builder: (_) => const NotificationSettingsPage());
  }

  static MaterialPageRoute blogDetail({required int blogId}) {
    return MaterialPageRoute(builder: (_) => BlogDetailPage(blogId: blogId));
  }

  static MaterialPageRoute blogSearch() {
    return MaterialPageRoute(builder: (_) => const BlogSearchPage());
  }

  // static MaterialPageRoute workoutSplit(
  //     {required int id, required String title, required String description}) {
  //   return MaterialPageRoute(
  //       builder: (_) => WorkoutSplitsPage(
  //             id: id,
  //             title: title,
  //             description: description,
  //           ));
  // }

  static MaterialPageRoute workoutDayDetail({
    required int id,
    required String title,
    required int id1,
    required String title1,
  }) {
    return MaterialPageRoute(
        builder: (_) => WorkoutDayDetailPage(
              id: id,
              title: title,
              id1: id1,
              title1: title1,
            ));
  }

  static MaterialPageRoute workoutSplitsRoadmap({
    required int id,
    required String title,
  }) {
    return MaterialPageRoute(
        builder: (_) => WorkoutSplitsRoadmapPage(
              id: id,
              title: title,
            ));
  }

  static MaterialPageRoute profile() {
    return MaterialPageRoute(builder: (_) => const ProfilePage());
  }

  static MaterialPageRoute addNewNotes() {
    return MaterialPageRoute(builder: (_) => const AddJournalPage());
  }

  static MaterialPageRoute addPhoto() {
    return MaterialPageRoute(builder: (_) => const AddPhotoPage());
  }

  static MaterialPageRoute helpPhoto() {
    return MaterialPageRoute(builder: (_) => HelpPhotoPage());
  }

  static MaterialPageRoute getPhotos() {
    return MaterialPageRoute(
        builder: (_) => BlocProvider(
              create: (context) => PhotoBlocBloc(),
              child: const PhotosPage(),
            ));
  }

  static MaterialPageRoute allJournal() {
    return MaterialPageRoute(
        builder: (_) => BlocProvider(
              create: (context) => JournalBloc(),
              child: const AllJournalPage(),
            ));
  }

  static MaterialPageRoute addWeightProgress() {
    return MaterialPageRoute(builder: (_) => const AddWeightPage());
  }

  static MaterialPageRoute progressMainPage() {
    return MaterialPageRoute(builder: (_) => const ProgressMainPage());
  }

  static MaterialPageRoute noteSingle({
    required int id,
  }) {
    return MaterialPageRoute(
        builder: (_) => NoteSinglePage(
              id: id,
            ));
  }

  static MaterialPageRoute photoDetailSort({
    required String photo,
    required String dropdown,
    required String dateTime,
  }) {
    return MaterialPageRoute(
        builder: (_) => PhotoDetailSortPage(
              photo: photo,
              dropdown: dropdown,
              dateTime: dateTime,
            ));
  }

  static MaterialPageRoute progressSingle({
    required String id,
  }) {
    return MaterialPageRoute(
        builder: (_) => ProgressSingle(
              id: id,
            ));
  }

  static MaterialPageRoute workoutMainDetailPage({
    required int id,
    required String title,
  }) {
    return MaterialPageRoute(
        builder: (_) => WorkoutMainDetailPage(
              id: id,
              title: title,
            ));
  }
}
