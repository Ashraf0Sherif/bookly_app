import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/features/search/repos/search_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/domain/repos/home_repo_implementation.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<HomeRepoImplementation>(
      () => HomeRepoImplementation(getIt()));
  getIt
      .registerLazySingleton<ApiService>(() => ApiService(createAndSetupDio()));
  getIt.registerLazySingleton<SearchRepoImplementation>(
      () => SearchRepoImplementation(getIt()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: true,
      responseHeader: true,
      request: true,
      requestBody: true,
    ),
  );
  return dio;
}
