part of 'main_cubit.dart';

abstract class MainState {}

class MainInitial extends MainState {}

class ChangeBottomNavBar extends MainState {}

//Home_Data
class LoadingHomeData extends MainState {}
class SuccessHomeData extends MainState {}
class ErrorHomeData extends MainState {}

