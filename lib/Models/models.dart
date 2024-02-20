import 'package:flutter/cupertino.dart';

class AirScreen{
  String ?headTitle;
  String ?active;
  String ?status;
  IconData ?icon;
  AirScreen.fromUser({required this.headTitle,required this.active,required this.status,required this.icon});
}