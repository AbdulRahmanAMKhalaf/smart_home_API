import 'package:dio/dio.dart';

class DioHelper{
  static Dio ?dio;
  static void initilaizeDio(){
    dio=Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

 static Future getData({
    required url,
    dynamic data,
}){
    dio!.options.headers={
      'lang':'en',
      'Content-Type':'application/json',
    };
    return dio!.get(url,data:data, );
  }
 static Future putData({
    required url,
    dynamic data,
  }){
    dio!.options.headers={
      'lang':'en',
      'Content-Type':'application/json',
    };
    return dio!.put(url,data:data, );
  }
  static Future postData({
    required url,
    dynamic data,
  }){
    dio!.options.headers={
      'lang':'en',
      'Content-Type':'application/json',
    };
    return dio!.post(url,data:data, );
  }
}