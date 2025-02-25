// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/Features/Home/data/services/webservices.dart';
import 'package:bookly_app/core/errors/failuer.dart';
import 'package:dartz/dartz.dart';

class HomeRepository {
  final WebServices webServices;
  HomeRepository({
    required this.webServices,
  });
  Future<Either<Failuer,BookModel>> getallBooks() async {
    return await webServices.getallBooks( 'flutter');
  }
  
}
