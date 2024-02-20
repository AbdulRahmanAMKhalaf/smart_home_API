import 'package:air_condition/Modules/ThiedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../Cubit/CubitApp.dart';
import '../Cubit/CubitStates.dart';
import '../Share/Components.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp,CubitStates>(
      listener: (context, state) {},
      builder: (context, state) {
        CubitApp cubitApp=CubitApp.get(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            foregroundImage: NetworkImage(
                                'https://scontent.famm12-1.fna.fbcdn.net/v/t39.30808-6/242134865_6174484665926823_8762946316742752053_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=dd5e9f&_nc_ohc=wMcKrl1VFK4AX9V6kui&_nc_ht=scontent.famm12-1.fna&oh=00_AfDlDKE3swhAE8sC58tgWuXcbSDDhHE6vuTZMmX9klhfag&oe=65D89DEC'
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello AbdulRahman',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                  shadows:[
                                    Shadow(
                                      color: Colors.black.withOpacity(.6),
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${DateTime.now()}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon:Icon(
                              Icons.settings,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '21 july 2022',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Energy Usage',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        '145.8',
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 50
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'KW/h',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '15% less than yesteday',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Icon(Icons.flash_on_rounded,color: Colors.white,size: 100),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Details',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 21,
                                            fontWeight: FontWeight.w800
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade600,
                                blurRadius: 30,
                                offset: Offset(3,5)
                            ),
                          ],
                        ),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder:(context, index) => homePartWidget( index),
                            separatorBuilder: (context, index) => SizedBox(width: 15),
                            itemCount: homeParts.length
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {

                              },
                              child: Container(
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.grey.shade800,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon:Icon(Icons.lightbulb_outline,color: Colors.grey.shade500,size: 40,)
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Lighting',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '4 lamps',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                           'OFF',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          IconButton(
                                              onPressed:() {},
                                              icon:CircleAvatar(
                                                  radius: 18,
                                                  backgroundColor: Colors.grey.shade800,
                                                  child: Icon(Icons.check,color: Colors.grey.shade500,size: 30,)
                                              )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: InkWell(
                              onTap: () {

                              },
                              child: Container(
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade500,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor:Colors.grey.shade700,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon:Icon(Icons.tv_sharp,color: Colors.white,size: 40,)
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Smart TV',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '2 device',
                                        style: TextStyle(
                                          color: Colors.grey.shade200,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            'OFF',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          IconButton(
                                              onPressed:() {},
                                              icon:CircleAvatar(
                                                  radius: 18,
                                                  backgroundColor: Colors.black,
                                                  child: Icon(Icons.check,color: Colors.white,size: 30,)
                                              )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context) => ThirdScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor: cubitApp.off?Colors.grey.shade800: Colors.white,
                                            child: IconButton(
                                                onPressed: () {
                                                  cubitApp.change_on_off();
                                                },
                                                icon:Icon(Icons.air_sharp,color: Colors.grey.shade500,size: 40,)
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(Icons.star,color: Colors.grey.shade800,size: 35),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Air conditionar',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Text(
                                        '1 device',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                      cubitApp.off==true?'OFF':'On',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          IconButton(
                                              onPressed:() {},
                                              icon:CircleAvatar(
                                                  radius: 18,
                                                  backgroundColor: cubitApp.off?Colors.grey.shade800: Colors.white,
                                                  child: Icon(Icons.check,color: Colors.black,size: 30,)
                                              )
                                          ),                                    ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: InkWell(
                              onTap: () {

                              },
                              child: Container(
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade500,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor: Colors.grey.shade800,
                                            child: IconButton(
                                                onPressed: () {},
                                                icon:Icon(Icons.headphones,color: Colors.white,size: 40,)
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'HK Studio',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        '2 device',
                                        style: TextStyle(
                                          color: Colors.grey.shade200,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            'Off',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          IconButton(
                                              onPressed:() {},
                                              icon:CircleAvatar(
                                                  radius: 18,
                                                  backgroundColor: Colors.black,
                                                  child: Icon(Icons.check,color: Colors.white,size: 30,)
                                              )
                                          ),                                    ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
