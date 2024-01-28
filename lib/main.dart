import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:posts_clean_arch/src/di/injector.dart';
import 'package:posts_clean_arch/src/features/posts_list/bloc/posts_cubit.dart';
import 'package:posts_clean_arch/src/features/posts_list/page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(
      environment: const String.fromEnvironment("app_env",
          defaultValue: Environment.prod));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
          create: (context) => PostsCubit(), child: HomePage()),
    );
  }
}
