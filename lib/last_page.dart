import 'package:flutter/material.dart';
import 'package:form/widget/options1.dart';
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
                  child: const Text('Hi  ',style: TextStyle(
                      fontFamily: "Monsterrat",
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                  ).shimmer(
                      primaryColor: Colors.white,
                      secondaryColor: Vx.violet700,
                      duration: Duration(seconds: 2)),
                ),
                  Container(
                    color: bg,
                    child: Text(titleController.text,style: const TextStyle(
                        fontFamily: "Monsterrat",
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                    ).shimmer(
                        primaryColor: Colors.white,
                        secondaryColor: Vx.violet700,
                        duration: Duration(seconds: 2)),),
                  Container(
                    color: bg,
                    child:const Text(' !',style: TextStyle(
                        fontFamily: "Monsterrat",
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                    ).shimmer(
                        primaryColor: Colors.white,
                        secondaryColor: Vx.violet700,
                        duration: Duration(seconds: 2)),
                  ),]
              ),
            ),
          ),
          Expanded(child: Container(color: bg,)),
          Material(
            color: bg,
            child: Padding(padding: const EdgeInsets.all(30),
              child: Column(
                  children: [
                    Container(
                      color: bg,
                      child: const Text('Your favourite color is \n  ',style: TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),
                    ),
                    if(First==1)Container(
                      color: bg,
                      child: Text('Red',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
                    if(First==2)Container(
                      color: bg,
                      child: Text('Blue',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
                    if(First==3)Container(
                      color: bg,
                      child: Text('Black',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
                    if(First==4)Container(
                      color: bg,
                      child: Text('White',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
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
                    Container(
                      color: bg,
                      child: const Text('Your favourite Singer is \n  ',style: TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),
                    ),
                    if(second==1)Container(
                      color: bg,
                      child: Text('Armaan Malik',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
                    if(second==2)Container(
                      color: bg,
                      child: Text('Arijith Singh',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
                    if(second==3)Container(
                      color: bg,
                      child: Text('Selena Gomez',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
                    if(second==4)Container(
                      color: bg,
                      child: Text('Adele',style: const TextStyle(
                          fontFamily: "Monsterrat",
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      ).shimmer(
                          primaryColor: Colors.white,
                          secondaryColor: Vx.violet700,
                          duration: Duration(seconds: 2)),),
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
                              Container(
                                color: bg,
                                child: const Text('Your favourite Actress is \n',style: TextStyle(
                                    fontFamily: "Monsterrat",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                ).shimmer(
                                    primaryColor: Colors.white,
                                    secondaryColor: Vx.violet700,
                                    duration: Duration(seconds: 2)),
                              ),
                              if(Third==1)Container(
                                color: bg,
                                child: Text('Alia Bhatt',style: const TextStyle(
                                    fontFamily: "Monsterrat",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                ).shimmer(
                                    primaryColor: Colors.white,
                                    secondaryColor: Vx.violet700,
                                    duration: Duration(seconds: 2)),),
                              if(Third==2)Container(
                                color: bg,
                                child: Text('Deepika',style: const TextStyle(
                                    fontFamily: "Monsterrat",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                ).shimmer(
                                    primaryColor: Colors.white,
                                    secondaryColor: Vx.violet700,
                                    duration: Duration(seconds: 2)),),
                              if(Third==3)Container(
                                color: bg,
                                child: Text('Black',style: const TextStyle(
                                    fontFamily: "Monsterrat",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                ).shimmer(
                                    primaryColor: Colors.white,
                                    secondaryColor: Vx.violet700,
                                    duration: Duration(seconds: 2)),),
                              if(Third==4)Container(
                                color: bg,
                                child: const Text('Anushka',style: TextStyle(
                                    fontFamily: "Monsterrat",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal),
                                ).shimmer(
                                    primaryColor: Colors.white,
                                    secondaryColor: Vx.violet700,
                                    duration: Duration(seconds: 2)),),
                              ]
                        ),
                      ),
                    ),
      ]

              ),
            );



  }
}
