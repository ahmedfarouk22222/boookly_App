import 'package:bookly_app/Features/Home/busines_logic/cubits/fetured_books_cubit/cubit/feturedbooks_cubit.dart';
import 'package:bookly_app/Features/Home/busines_logic/cubits/newsbookCubit/cubit/newstbooks_cubit.dart';
import 'package:bookly_app/Features/Home/busines_logic/cubits/similar_books_cubits/cubit/similarbooks_cubit.dart';
import 'package:bookly_app/Features/Home/data/repository/home_repository.dart';
import 'package:bookly_app/Features/Home/data/services/webservices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initGetIt() {
  // Register Dio first
  getIt.registerLazySingleton<Dio>(() => setupDio());

  // Register services
  getIt.registerLazySingleton<WebServices>(() => WebServices(getIt<Dio>()));

  // Register repositories
  getIt.registerLazySingleton<HomeRepository>(
      () => HomeRepository(getIt<WebServices>()));

  // Register Cubits
  getIt.registerLazySingleton<FeturedbooksCubit>(
      () => FeturedbooksCubit(getIt<HomeRepository>()));
  getIt.registerLazySingleton<NewstbooksCubit>(
      () => NewstbooksCubit(getIt<HomeRepository>()));
       getIt.registerLazySingleton<SimilarbooksCubit>(
      () => SimilarbooksCubit(getIt<HomeRepository>()));
}

Dio setupDio() {
  Dio dio = Dio();
  dio.options = BaseOptions(
    connectTimeout: Duration(seconds: 60),
    receiveTimeout: Duration(seconds: 60),
  );
  dio.interceptors.add(LogInterceptor(
    request: true,
    requestBody: true,
    responseBody: true,
    error: true,
  ));
  return dio;
}
