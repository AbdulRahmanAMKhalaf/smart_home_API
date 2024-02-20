import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/models.dart';

List<String> homeParts=
[
  'Living Room',
  'Bedroom',
  'Kitchen',
];

Widget homePartWidget(int index){
  return Container(
    width: 160,
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade200,
      boxShadow: [
        BoxShadow(
          color: Colors.purple.shade900,
          blurRadius: 35,
          offset: Offset(5,12),
        ),
      ],
    ),
    child: Center(
      child: Text(
        '${homeParts[index]}',
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20
        ),
      ),
    ),
  );
}
List<AirScreen> items=
[
  AirScreen.fromUser(
      headTitle: 'Smart Lamp',
      active: 'Active for 5h',
      status: 'OFF',
      icon: Icons.lightbulb_outline
  ),
  AirScreen.fromUser(
      headTitle: 'Smart TV',
      active: 'Active for 2h',
      status: 'OFF',
      icon: Icons.tv,
  ),
  AirScreen.fromUser(
      headTitle: 'HK Studio',
      active: 'off line',
      status: 'OFF',
      icon: Icons.headphones,
  ),
];
Widget listItems (int index){
  return  Row(
    children: [
      IconButton(
        onPressed:() {},
        icon:CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black,
          child: Icon(items[index].icon,color: Colors.white,size: 35,),
        ),

      ),
      SizedBox(width: 15,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${items[index].headTitle}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            '${items[index].active}',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      Spacer(),
      TextButton(
        onPressed:() {},
        child:CircleAvatar(
          backgroundColor: Colors.black,
          radius: 30,
          child: Text(
            '${items[index].status}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ],
  );
}
List<String> images=
[
  'https://th.bing.com/th/id/OIP.FthIXHQp_e1nIFjFg44qAgHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
  'https://th.bing.com/th/id/OIP.Llzsk5aAF7dvU8hVAExI-gAAAA?pid=ImgDet&w=203&h=153&c=7&dpr=1.3',
  'https://th.bing.com/th/id/OIP.Qs6YDH69cAGB5ds8copdLgHaEg?pid=ImgDet&w=203&h=123&c=7&dpr=1.3',
];