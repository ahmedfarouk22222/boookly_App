import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/core/constans/constans.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'webservices.g.dart';

@RestApi(baseUrl:baseURL)
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET("volumes")
   Future<BookModel> getallBooks(@Query("q") String query);
   @GET("volumes")
Future<BookModel> getNewBooks(
  @Query("filter") String filter ,
  @Query("q") String query ,
  @Query("orderBy") String orderBy,
  @Query("maxResults") int maxResults ,
);
@GET("volumes")
Future<BookModel> getSimilarBooks(
  @Query("filter") String filter ,
  @Query("q") String query ,
  @Query("orderBy") String orderBy,
  @Query("maxResults") int maxResults ,
);


  
}

