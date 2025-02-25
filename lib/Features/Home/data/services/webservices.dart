import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'webservices.g.dart';

@RestApi(baseUrl:baseURL)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET("volumes")
   Future<Either<Failuer,BookModel>> getallBooks(@Query("q") String query);
  
}
