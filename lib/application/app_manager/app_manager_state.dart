part of 'app_manager_cubit.dart';

@freezed
class AppManagerState with _$AppManagerState {

  const AppManagerState._();

  const factory AppManagerState({
    @Default(false) bool logoutUser,
  }) = _AppManagerState;

}
