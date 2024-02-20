import 'package:air_condition/Cubit/CubitApp.dart';
import 'package:air_condition/Cubit/CubitStates.dart';
import 'package:air_condition/Modules/SecondScreen.dart';
import 'package:air_condition/Share/Dio.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Share/EndPoints.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

   TextEditingController email=TextEditingController();
   TextEditingController password=TextEditingController();
   var formKey=GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp,CubitStates>(
      listener: (context, state) {
        if(state is SuccessLoadingLoginState){
          if(CubitApp.get(context).loginModel!.status!){
            Fluttertoast.showToast(
                msg: CubitApp.get(context).loginModel!.message!,
              fontSize: 20,
              backgroundColor: Colors.green,
              textColor: Colors.black,
              toastLength: Toast.LENGTH_LONG
            ).
            then((value) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder:(context) => SecondScreen(),
                  ),
                  (route) => false
              );
            });

          }
          else
            Fluttertoast.showToast(
                msg: CubitApp.get(context).loginModel!.message!,
                fontSize: 20,
                backgroundColor: Colors.red,
                textColor: Colors.black,
                toastLength: Toast.LENGTH_LONG
            );
        }
      },
      builder: (context, state) {
        CubitApp cubitApp=CubitApp.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          if(value!.isEmpty)
                            return 'required Field';
                          else
                            return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            label: Text(
                              'Email Address',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,size: 30,)
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: password,
                        validator: (value) {
                          if(value!.isEmpty)
                            return 'required Field';
                          else
                            return null;
                        },
                        obscureText: !cubitApp.isPressed,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                cubitApp.changeSecureText();
                              },
                              icon: Icon(cubitApp.isPressed==false?Icons.shield:Icons.remove_moderator,size: 27,color: Colors.black),
                             ),
                            prefixIcon: Icon(Icons.key,color: Colors.grey,size: 30,)
                        ),
                      ),
                      SizedBox(height: 50),
                      ConditionalBuilder(
                        condition: state is!LoadingLoginState ,
                        builder: (context) => Container(
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black
                          ),
                          child: MaterialButton(
                            onPressed:() {
                              if(formKey.currentState!.validate()){
                                cubitApp.LoginButton(
                                  email: email.text,
                                  password: password.text,
                                );
                              }
                            },
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        fallback: (context) => Center(child: CircularProgressIndicator()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
