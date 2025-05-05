import 'package:bookly_app/features/Home/data/models/books/books.dart';

abstract class AllBooksCubitState {}

final class AllBooksCubitInitial extends AllBooksCubitState {}

final class AllBooksCubitLoading extends AllBooksCubitState {}

final class AllBooksCubitSuccess extends AllBooksCubitState {
  List<Books> books;
  AllBooksCubitSuccess({required this.books});
}

final class AllBooksCubitError extends AllBooksCubitState {
  final String error;

  AllBooksCubitError({required this.error});
}
