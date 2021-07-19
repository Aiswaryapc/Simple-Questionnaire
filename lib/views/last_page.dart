import 'package:flutter/material.dart';
import 'package:form/options/options1.dart';

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
                  Text2('Hi '),
                  Text2(titleController.text),
                  Text2(' !'),]
              ),
            ),
          ),
          Expanded(child: Container(color: bg,)),
          Material(
            color: bg,
            child: Padding(padding: const EdgeInsets.all(30),
              child: Column(
                  children: [
                    Text2('Your favourite color is'),
                    if(First==1)Text2('Red'),
                    if(First==2)Text2('Blue'),
                    if(First==3)Text2('Black'),
                    if(First==4)Text2('White'),

                    ]
              ),
            ),
          ),
      Expanded(child: Container(color: bg,)),
          Material(
            color: bg,
            child: Padding(padding: const EdgeInsets.all(30),
              child: Column(
                  children: [
                    Text2('Your favourite Singer is '),
                    if(second==1)Text2('Armaan Malik'),
                    if(second==2)Text2('Arijith Singh'),
                    if(second==3)Text2('Selena Gomez'),
                    if(second==4)Text2('Adele'),

                   ]
              ),
            ),
          ),
                  Expanded(child: Container(color: bg,)),
                    Material(
                      color: bg,
                      child: Padding(padding: const EdgeInsets.all(30),
                        child: Column(
                            children: [
                              Text2('Your favourite Actress is '),
                              if(Third==1)Text2('Alia Bhatt'),
                              if(Third==2)Text2('Deepika'),
                              if(Third==3)Text2('Anushka'),
                              if(Third==4)Text2('Shreddha'),
                              ]
                        ),
                      ),
                    ),
      ]

              ),
            );



  }
}
Widget Text2( text) {
  return Container(
    color: bg,
    child: Text(text,style: const TextStyle(
        fontFamily: "Monsterrat",
        fontWeight: FontWeight.w900,
        fontSize: 25,
        fontStyle: FontStyle.normal),
    ).shimmer(
        primaryColor: Colors.white,
        secondaryColor: Vx.violet700,
        duration: Duration(seconds: 2)),);}



