import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_final_project/core/utils/app_router.dart';
import 'package:iti_final_project/features/home/presentation/manager/block/app_cubit.dart';

import '../core/utils/app_theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) =>AppCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        darkTheme: AppTheme.darkTheme,
         theme: AppTheme.lightTheme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
