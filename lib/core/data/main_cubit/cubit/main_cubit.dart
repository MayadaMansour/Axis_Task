
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_api/tmdb_api.dart';

import '../../../model/people_model.dart';
import '../../remote/dio_helper.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);
  List trendyMovie = [];
  List topMovie = [];
  List popularPeople = [];

  final String api_key = "70b7c391b11bbc6113f65a8c3c1c415b";
  final String acess_taken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3MGI3YzM5MWIxMWJiYzYxMTNmNjVhOGMzYzFjNDE1YiIsInN1YiI6IjY0NmNjNzZkZDE4NTcyMDEwMTlhMWM0MCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.HejHH1XAnBP20gxcRaNvQhbGe72BbkrIIB_7_L44JA4";


  // void getHomeData() {
  //   print("object");
  //   emit(LoadingHomeData());
  //   DioHelper.getData(
  //        url: '$_baseUrl/popular?api_key=$_apiKey'
  //   ).then((value) {
  //      homeModel = Poeple.fromJson(jsonDecode(value.data));
  //      print(value.data);
  //     emit(SuccessHomeData());
  //   }).catchError((error) {
  //     emit(ErrorHomeData());
  //   });
  // }


  getMoview() async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(api_key, acess_taken),
        logConfig: ConfigLogger(showLogs: true, showErrorLogs: true));
    Map trendMovie = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topResult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map popularResult = await tmdbWithCustomLogs.v3.people.getPopular();
    trendyMovie = trendMovie["results"];
    topMovie = topResult["results"];
    popularPeople = popularResult["results"];

  }
}