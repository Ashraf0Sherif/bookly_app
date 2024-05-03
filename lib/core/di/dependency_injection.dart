import 'package:bookly_app/features/home/presentation/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/logic/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<FeaturedBooksCubit>(() => FeaturedBooksCubit(getIt()));
  getIt.registerLazySingleton<NewestBooksCubit>(() => NewestBooksCubit(getIt()));
  getIt.registerLazySingleton<HomeRepoImplementation>(() => HomeRepoImplementation(getIt()));
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
