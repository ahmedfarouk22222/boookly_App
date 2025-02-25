// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class Failure {
  String errorMessage;
  Failure(
    this.errorMessage,
  );
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timed out. Please try again.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Connection timed out. Please try again.');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Connection timed out. Please try again.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled.');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection.');
      case DioExceptionType.unknown:
      default:
        return ServerFailure('Unexpected error occurred.');
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServerFailure(
          response?["error"]?["message"] ?? 'Authorization error.');
    } else if (statusCode == 404) {
      return ServerFailure('Resource not found.');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error.');
    } else {
      return ServerFailure('Something went wrong. Please try again.');
    }
  }
}
