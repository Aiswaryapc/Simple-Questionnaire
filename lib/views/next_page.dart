import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:form/options/options1.dart';
import 'package:form/options/options2.dart';
import 'package:form/options/options3.dart';
import 'package:form/views/first_page.dart';

import 'package:velocity_x/velocity_x.dart';

import 'last_page.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color color1= Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: Column(
        children: [
          Expanded(
            
            child: Container(
              color: bg,
              child: Column(
                children: [
                  const SizedBox(height: 60,),
                  Material(
                    child: Container(
                      color: bg,
                      child:Padding(  padding: const EdgeInsets.all(14.0),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'QUESTIONNAIRE',
                              textStyle: const TextStyle(
                                fontFamily: "Monsterrrat",
                                color: Vx.violet200,
                                backgroundColor: bg,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],

                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),

                    ),
                  ),

                  Expanded(child: Container()),

                  if(flag==0)  Material(
                    child: Container(
                      color: bg,
                      child: Padding( padding: const EdgeInsets.all(14.0),
                        child: const Text('What is your favourite color among these?',style: TextStyle(
                            fontFamily: "Monsterrat",
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            fontStyle: FontStyle.normal),
                        ).shimmer(
                            primaryColor: Colors.white,
                            secondaryColor: Vx.violet900,
                            duration: Duration(seconds: 2)),
                      ),),
                  ),
                  if(flag==2)  Material(
                    child: Container(
                      color: bg,
                      child: Padding( padding: const EdgeInsets.all(14.0),
                        child: const Text('Who is your favourite Singer among these?',style: TextStyle(
                            fontFamily: "Monsterrat",
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            fontStyle: FontStyle.normal),
                        ).shimmer(
                            primaryColor: Colors.white,
                            secondaryColor: Vx.violet900,
                            duration: Duration(seconds: 2)),
                      ),),
                  ),
                  if(flag==4)  Material(
                    child: Container(
                      color: bg,
                      child: Padding( padding: const EdgeInsets.all(14.0),
                        child: const Text('Who is your favourite Actress among these?',style: TextStyle(
                            fontFamily: "Monsterrat",
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            fontStyle: FontStyle.normal),
                        ).shimmer(
                            primaryColor: Colors.white,
                            secondaryColor: Vx.violet900,
                            duration: Duration(seconds: 2)),
                      ),),
                  ),
                  Expanded(child: Container()),

                 if(flag==0) const Padding( padding: EdgeInsets.all(14.0),
                      child: Material(child: Options1())),
                  if(flag==2) const Padding( padding: EdgeInsets.all(14.0),
                      child: Material(child: Options2())),
                  if(flag==4) const Padding( padding: EdgeInsets.all(14.0),
                      child: Material(child: Options3())),
                  Expanded(child: Container()),
                  Align(alignment: Alignment.bottomRight,
                      child: Padding( padding: const EdgeInsets.all(30),
                          child: ElevatedButton(  child : Text("Next"),
                            style: ElevatedButton.styleFrom(
                              primary: color1 ,
                              elevation: 6,
                              onPrimary: Colors.white,
                              onSurface: Colors.grey,

                            ),onPressed: ( ) {if(flag == 1||flag==3||flag==5)
                            {
                              setState(() {

                              color1 = Vx.violet800;

                              flag++;

                            });
                            if(flag==6){
                              Navigator.push(
                                context,
                                 MaterialPageRoute(builder: (context) => LastPage ()),
                              );}}
                            },
                          ))),




                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

