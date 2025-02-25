// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/Features/Home/data/services/webservices.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  final WebServices webServices;
  HomeRepository({
    required this.webServices,
  });
  Future<Either<Failure, BookModel>> getallBooks(String query) async {
    try {
      final response = await webServices.getallBooks(query);
      return Right(response);
    } catch (e) {
      if (e is DioException) {
        return Left(
          (ServerFailure.fromDioError(e)),
        );
      }
      return Left(
        Failure(e.toString()),
      );
    }
  }
}
