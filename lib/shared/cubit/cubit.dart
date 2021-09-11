
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  // Create object To use any wher => CounterCubit.get(context).
  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
 
  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  bool isDark = false;

  void changeAppMode({bool formShaerd}) {
    if (formShaerd != null) {
      isDark = formShaerd;
      emit(AppChangeModeState());

    }else {
       isDark = !isDark;
    CacheHelper.putData(key: 'isDark', value: isDark).then((value) {
      emit(AppChangeModeState());
    });

    }
   
  }
}
