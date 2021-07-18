import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'first_page.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: Column(
        children: [
          SizedBox(height: 60,),
          Material(
            color: bg,
            child: Padding(padding: const EdgeInsets.all(30),
              child: Row(
                children: [
                  Container(
                  color: bg,
                  child: Text('Hi  ',style: TextStyle(
                      fontFamily: "Monsterrat",
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      fontStyle: FontStyle.normal),
                  ).shimmer(
                      primaryColor: Colors.white,
                      secondaryColor: Vx.violet300,
                      duration: Duration(seconds: 2)),
                ),
                  Container(
                    color: bg,
                    child: Text(titleController.text,style: TextStyle(
                        fontFamily: "Monsterrat",
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        fontStyle: FontStyle.normal),
                    ).shimmer(
                        primaryColor: Colors.white,
                        secondaryColor: Vx.violet300,
                        duration: Duration(seconds: 2)),
                  ),]
              ),
            ),
          ),


        ],

      )
    );
  }
}
