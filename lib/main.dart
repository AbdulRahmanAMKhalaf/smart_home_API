import 'package:air_condition/Cubit/CubitApp.dart';
import 'package:air_condition/Share/Dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Modules/FirstScreen.dart';
import 'Modules/LoginScreen.dart';
import 'Modules/RigesterScreen.dart';
import 'Modules/SecondScreen.dart';
import 'Modules/ThiedScreen.dart';

void main() {
  DioHelper.initilaizeDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CubitApp(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
