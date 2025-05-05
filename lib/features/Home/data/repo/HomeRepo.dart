import 'package:bookly_app/features/Home/data/models/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<String,List<Books>>> fetchAllBooks();
   Future<Either<String,List<Books>>> fetchBestBooks();
}
