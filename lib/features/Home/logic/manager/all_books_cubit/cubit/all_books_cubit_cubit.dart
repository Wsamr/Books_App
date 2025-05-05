import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/repo/HomeRepoImp.dart';
import 'package:bookly_app/features/Home/logic/manager/all_books_cubit/cubit/all_books_cubit_state.dart';
import 'package:meta/meta.dart';

class AllBooksCubit extends Cubit<AllBooksCubitState> {
  final HomerepoImp homerepoImp;
  AllBooksCubit({required this.homerepoImp}) : super(AllBooksCubitInitial());
  getAllBooks() async {
    emit(AllBooksCubitLoading());
    var result = await homerepoImp.fetchAllBooks();
    result.fold(
      (error) {
        emit(AllBooksCubitError(error: error));
      },
      (books) {
        emit(AllBooksCubitSuccess(books: books));
      },
    );
  }
}
