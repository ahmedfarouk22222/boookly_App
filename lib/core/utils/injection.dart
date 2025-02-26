import 'package:bookly_app/Features/Home/busines_logic/cubits/fetured_books_cubit/cubit/feturedbooks_cubit.dart';
import 'package:bookly_app/Features/Home/busines_logic/cubits/newsbookCubit/cubit/newstbooks_cubit.dart';
import 'package:bookly_app/Features/Home/data/repository/home_repository.dart';
import 'package:bookly_app/Features/Home/data/services/webservices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void initGitit() {
  getIt.registerLazySingleton<FeturedbooksCubit>(
      () => FeturedbooksCubit(getIt()));
  getIt.registerLazySingleton<NewstbooksCubit>(() => NewstbooksCubit(getIt()));

  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(getIt()));
  getIt.registerLazySingleton<WebServices>(() => WebServices(diosetup()));
}

Dio diosetup() {
  Dio dio = Dio();
  dio.options = BaseOptions(
    connectTimeout: Duration(seconds: 60),
    receiveTimeout: Duration(seconds: 60),
  );
  dio.interceptors.add(LogInterceptor(
      requestBody: true, error: true, request: true, responseBody: true));
  return dio;
}
