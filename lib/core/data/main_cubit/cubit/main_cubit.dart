
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/people_model.dart';
import '../../remote/dio_helper.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);

  Poeple? homeModel;
  final _apiKey = '70b7c391b11bbc6113f65a8c3c1c415b';
  final _baseUrl = "http://api.themoviedb.org/3/person";

  void getHomeData() {
    print("object");
    emit(LoadingHomeData());
    DioHelper.getData(
         url: '$_baseUrl/popular?api_key=$_apiKey'
    ).then((value) {
       homeModel = Poeple.fromJson(jsonDecode(value.data));
       print(value.data);
      emit(SuccessHomeData());
    }).catchError((error) {
      emit(ErrorHomeData());
    });
  }

}
