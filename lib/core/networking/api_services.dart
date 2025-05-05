// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  String baseUrl = "https://www.googleapis.com/books/";
  ApiServices({required this.dio});
  get({required String endPoint}) async {
    var response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
