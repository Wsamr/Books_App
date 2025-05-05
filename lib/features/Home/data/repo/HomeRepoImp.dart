// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/networking/api_services.dart';
import 'package:bookly_app/features/Home/data/models/books/books.dart';
import 'package:bookly_app/features/Home/data/repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';

class HomerepoImp implements Homerepo {
  final ApiServices apiServices;
  HomerepoImp({required this.apiServices});
  @override
  Future<Either<String, List<Books>>> fetchAllBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: "/v1/volumes?Filtering=free-ebooks&q=subject:health",
      );
      List<Books> books = [];
      for (var item in data["items"]) {
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
   Future<Either<String, List<Books>>> fetchBestBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: "/v1/volumes?Filtering=free-ebooks&q=subject:health&Sorting",
      );
      List<Books> books = [];
      for (var item in data["items"]) {
        books.add(Books.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }

}
