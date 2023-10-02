import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/features/movie/populer/view_model/cubit/populer_cubit.dart';
import 'package:movie_app/features/movie/populer/view_model/repository.dart';
import 'package:movie_app/web_services/web_services.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<PopulerCubit>(() => PopulerCubit(getIt()));

// Alternatively you could write it if you don't like global variables
  getIt.registerLazySingleton<Repository>(() => getIt());

  getIt.registerLazySingleton<WebServices>(() => WebServices(Dio()));
}
