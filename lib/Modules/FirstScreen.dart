import 'package:air_condition/Modules/LoginScreen.dart';
import 'package:air_condition/Modules/RigesterScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Share/Components.dart';

class FirstScreen extends StatelessWidget {
   FirstScreen({super.key});
   PageController pageController =PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 320,
              width: double.infinity,
              child: PageView.builder(
                  itemBuilder:(context, index) => Image(
                    fit: BoxFit.fill,
                      image:NetworkImage(
                        '${images[index]}'
                      ),
                  ),
                scrollDirection: Axis.horizontal,
                itemCount:images.length,
                controller:pageController ,
              )
            ),
            SizedBox(height: 10),
            SmoothPageIndicator(
                controller:pageController,
                count: images.length,
              effect: SwapEffect(dotColor: Colors.grey,activeDotColor: Colors.black,dotHeight: 15,dotWidth: 15),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 110,
              width:300,
              child: Text(
                textAlign: TextAlign.center,
                'Easily Control Your Home',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  letterSpacing: .1,
                height: 1.2
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width:300,
              child: Text(
                textAlign: TextAlign.center,
                'Manage your home from anytime, anywhere.',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.grey,
                  fontSize: 20,

                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 160,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 24,
                    offset: Offset(0,18),
                  ),
                ],
              ),
              child: TextButton(
                  onPressed:() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context) => LoginScreen(),
                        ),
                    );
                  },
                  child:Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 1,
              width: 220,
              color: Colors.black,
            ),
            SizedBox(height: 5),
            Text(
              'Or',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            Container(
              width: 160,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 24,
                    offset: Offset(0,18),
                  ),
                ],
              ),
              child: TextButton(
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:(context) => RigesterScreen(),
                    ),
                  );
                },
                child:Text(
                  'Register',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
