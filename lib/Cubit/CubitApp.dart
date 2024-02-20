import 'package:air_condition/Cubit/CubitStates.dart';
import 'package:air_condition/Models/RigesterModel.dart';
import 'package:air_condition/Modules/RigesterScreen.dart';
import 'package:air_condition/Share/Dio.dart';
import 'package:air_condition/Share/EndPoints.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Models/LoginModel.dart';

class CubitApp extends Cubit<CubitStates>{
  CubitApp() :super(initilaizeState());
 static CubitApp get(context)=>BlocProvider.of(context);

  LoginModel?loginModel;
  void LoginButton({
    required String email,
    required String password,
}){
    emit(LoadingLoginState());
    DioHelper.postData(
        url:Login,
      data: {
          'email':email,
        'password':password,
      },
    ).
    then((value) {
      loginModel=LoginModel.fromJason(value.data);
      emit(SuccessLoadingLoginState());
    }).catchError((onError){
      print('At LoginButton At CubitApp '+onError.toString());
      emit(ErrorLoadingLoginState());
    });
  }
  
  bool isPressed=false;
  void changeSecureText(){
    isPressed=!isPressed;
    emit(ChangeButtonState());
  }
  bool off=true;
  void change_on_off(){
    off=!off;
    emit(ChangeButtonState());
  }

  RigesterModel ?rigesterModel;
  void RigesterButton({
    required String email,
    required String password,
    required String name,
    required String phone,
  }){
    emit(LoadingRigesterState());
    DioHelper.postData(
      url:Rigester,
      data: {
        'email':email,
        'password':password,
        'name':name,
        'phone':phone,
      },
    ).
    then((value) {
      rigesterModel=RigesterModel.fromJason(value.data);
      emit(SuccessLoadingRigesterState());
    }).catchError((onError){
      print('At RigesterButton At CubitApp '+onError.toString());
      emit(ErrorLoadingRigesterState());
    });
  }
}