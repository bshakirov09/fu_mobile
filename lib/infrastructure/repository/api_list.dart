// Created by Muhammed Tolkinov on 09-December-2021

class APIList {
  const APIList._();

  static const String baseUrl = 'https://api.fitness.jafton.com';
  static const String signIn = '$baseUrl/v1/account/login/';
  static const String getRecipesCategory = '$baseUrl/v1/recipe/';
  static const String getRecipesDetail = '$baseUrl/v1/recipe/';
  static const String getRecipesList = '$baseUrl/v1/recipe-category/';
  static const String registerUser = '$baseUrl/v1/account/register/';
  static const String confirmRegister = '$baseUrl/v1/account/confirm-register/';
  static const String updateUserInfo =
      '$baseUrl/v1/account/user/update-profile/';
  static const String changePassword = "$baseUrl/v1/account/change-password/";
  static const String getProfile = "$baseUrl/v1/account/user/get-profile/";
  static const String uploadMedia = "$baseUrl/v1/document/upload-images/";
  static const String logout = "$baseUrl/v1/account/logout/";
  static const String resetPassword =
      "$baseUrl/v1/account/forgot-password/reset-password/";
  static const String sendVerificationCode =
      "$baseUrl/v1/account/forgot-password/verify-email/";
  static const String verifyCode =
      "$baseUrl/v1/account/forgot-password/verify-code/";
  static const String googleAuth = "$baseUrl/v1/account/google/";
  static const String facebookAuth = "$baseUrl/v1/account/facebook/";
  static const String appleAuth = "$baseUrl/v1/account/apple/";
  static const String blog = "$baseUrl/v1/blog/";
  static const String getWorkoutList = "$baseUrl/v1/workout/mobile/";
  static const String getWorkoutMainDetail =
      "$baseUrl/v1/workout/mobile/workout-type/";
  static const String refreshToken = "$baseUrl/v1/account/token/refresh/";
  static const String getWorkoutDayDetail =
      "$baseUrl/v1/workout/mobile/gym-detail/";
  static const String getWorkoutQuad =
      "$baseUrl/v1/workout/mobile/quad-detail/";
  static const String getWorkoutSplitsRoadmap =
      "$baseUrl/v1/workout/mobile/roadmap/";
  static const String completeWorkout = "$baseUrl/v1/workout/mobile/gym-track/";
  static const String addWeightQuad = "$baseUrl/v1/workout/mobile/quad-track/";
  static const String getPhotoListProgress = "$baseUrl/v1/photo/?page=";
  static const String getPhotoFromDate = "$baseUrl/v1/photo/";
  static const String getJournalListProgress = "$baseUrl/v1/journal/";
  static const String getJournalFromDate = "$baseUrl/v1/journal/";
  static const String getJournalDetailProgress = "$baseUrl/v1/journal/";
  static const String createPhoto = "$baseUrl/v1/photo/";
  static const String addJournal = "$baseUrl/v1/journal/";
  static const String detailPhoto = "$baseUrl/v1/photo/detail-view/";
  static const String getWeightProgress = "$baseUrl/v1/weight/";
  static const String addWeightCheck = "$baseUrl/v1/weight/add-weight-check/";
  static const String updateWeight = "$baseUrl/v1/weight/";
  static const String createWeight = "$baseUrl/v1/weight/";
  static const String getProgressDetail = "$baseUrl/v1/weight/";
}
