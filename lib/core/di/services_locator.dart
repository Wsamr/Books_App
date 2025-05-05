import 'package:bookly_app/core/networking/api_services.dart';
import 'package:bookly_app/features/Home/data/repo/HomeRepoImp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
setUp() {
  getIt.registerSingleton<ApiServices>(ApiServices(dio: Dio()));
    getIt.registerSingleton<HomerepoImp>(HomerepoImp(apiServices: getIt.get<ApiServices>()));

}
