import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'views/first_page.dart';

void main()  {
  runApp(MyHome());
}


class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => FirstPage(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [Expanded(
            child:Material(
              child: Container(
                color: Colors.black,
                child: Align(alignment: Alignment.center,
                  child: const Text("Form", style: TextStyle(
                      fontFamily: "Monsterrat",
                      fontWeight: FontWeight.w900,
                      fontSize: 60,
                      fontStyle: FontStyle.normal),
                  ).shimmer(
                      primaryColor: Colors.white,
                      secondaryColor: Vx.violet700,
                      duration:const Duration(seconds: 2)),)),
            ),

            ),


        ]);
  }
}