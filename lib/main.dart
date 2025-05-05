import 'package:bookly_app/core/di/services_locator.dart';
import 'package:bookly_app/core/networking/api_services.dart';
import 'package:bookly_app/features/Home/data/repo/HomeRepoImp.dart';
import 'package:bookly_app/features/Home/logic/manager/all_books_cubit/cubit/all_books_cubit_cubit.dart';
import 'package:bookly_app/features/Home/logic/manager/best_seller_cubit/cubit/best_seller_cubit.dart';
import 'package:bookly_app/features/Home/ui/views/HomeView.dart';
import 'package:bookly_app/features/Splash/ui/views/SplashScreen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => AllBooksCubit(homerepoImp: getIt.get<HomerepoImp>()),
        ),
         BlocProvider(
          create:
              (context) => BestSellerCubit( getIt.get<HomerepoImp>()),
        ),
      ],
      child: MaterialApp(
        routes: {"Home": (context) => Homeview()},
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff100B20),
        ),
        home: Splashscreen(),
      ),
    );
  }
}
