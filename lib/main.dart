
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fitness_uncensored/utils/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import 'package:fitness_uncensored/application/app_manager/app_manager_cubit.dart';
import 'package:fitness_uncensored/application/workout/bloc/workout_bloc.dart';
import 'package:fitness_uncensored/presentation/pages/app_widget.dart';

import 'application/blog/bloc/blog_bloc.dart';
import 'application/auth/forgot_password/forgot_password_bloc.dart';
import 'application/profile/profile_bloc.dart';
import 'application/auth/sign_up/sign_up_bloc.dart';
import 'application/recipes/recipe_bloc.dart';
import 'presentation/pages/app_widget.dart';
import 'presentation/styles/app_theme.dart';
import 'utils/app_init.dart';

void main() async {
  await initializeApp();

  runApp(
    EasyLocalization(
      startLocale: const Locale('en', 'US'),
      supportedLocales: const [Locale('en', 'US')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    getIt.get<Dio>().interceptors.add(LogInterceptor(
      responseHeader: false,
      requestBody: true,
      responseBody: true
    ));
    super.initState();
  }
  
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiBlocProvider(
      providers: [
        BlocProvider<AppManagerCubit>(
          create: (_) => AppManagerCubit(),
        ),
        BlocProvider<RecipeBloc>(
          create: (_) => RecipeBloc(),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => ProfileBloc(),
        ),
        BlocProvider<SignUpBloc>(
          create: (_) => SignUpBloc(),
          lazy: true,
        ),
        BlocProvider<ForgotPasswordBloc>(
          create: (_) => ForgotPasswordBloc(),
          lazy: true,
        ),
        BlocProvider<BlogBloc>(
          create: (_) => BlogBloc(),
        ),
        BlocProvider<WorkoutBloc>(
          create: (_) => WorkoutBloc(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => AdaptiveTheme(
          light: AppTheme.lightTheme,
          dark: AppTheme.darkTheme,
          initial: AdaptiveThemeMode.light,
          builder: (theme, darkTheme) {
            return MaterialApp(
              theme: theme,
              darkTheme: darkTheme,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              title: 'Fitness Uncensored',
              home: const AppWidget(),
            );
          },
        ),
      ),
    );
  }
}
