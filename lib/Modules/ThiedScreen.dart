import 'package:flutter/material.dart';

import '../Share/Components.dart';

class ThirdScreen extends StatefulWidget {
   ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  double temp=24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Air Conditioner',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 30,

            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed:() {},
              icon: Icon(Icons.settings,size: 30,color: Colors.black,)
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '${temp.round()}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 100,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ),
                Text(
                  'Temperature',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 20),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 13
                  ),
                  child: Slider(
                    thumbColor: Colors.white,
                    value: temp,
                    onChanged:(value) {
                      setState(() {

                      });
                      temp=value;
                    },
                    min: 15,
                    max: 30,
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Automatic',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                   SizedBox(width: 20),
                    Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Swing',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder:(context, index) =>listItems(index),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount:items.length
            ),
          ),
        ],
      ),
    );
  }
}
