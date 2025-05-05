// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:bookly_app/features/Home/data/repo/HomeRepoImp.dart';
import 'package:bookly_app/features/Home/logic/manager/best_seller_cubit/cubit/best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  HomerepoImp homerepoImp;
  BestSellerCubit(
    this.homerepoImp,
  ) : super(BestSellerInitial());
}
