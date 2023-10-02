import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/dependancy_injection/di.dart';
import 'package:movie_app/features/movie/populer/view/home_screen.dart';
import 'package:movie_app/features/movie/populer/view_model/cubit/populer_cubit.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        lazy: false,
        create: (context) => getIt<PopulerCubit>(),
        child: const HomeScreen(),
      ),
    );
  }
}
