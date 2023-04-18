import 'package:basic_requirements_package/app.dart';
import 'package:basic_requirements_package/core/init/cubit/theme_cubit.dart';
import 'package:basic_requirements_package/core/init/cache/theme-caching/theme_caching.dart';
import 'package:basic_requirements_package/cubit_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await ThemeCaching.init();
  Bloc.observer = CubitObserver();
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: const MyApp(),
    ),
  );
}
