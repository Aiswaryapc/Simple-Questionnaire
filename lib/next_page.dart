import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:form/first_page.dart';
import 'package:form/widget/options.dart';
import 'package:velocity_x/velocity_x.dart';

import 'last_page.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                  SizedBox(height: 60,),
                  Material(
                    child: Container(
                      color: bg,
                      child: const Text('QUESTIONNAIRE',style: TextStyle(
                    fontFamily: "Monsterrat",
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    fontStyle: FontStyle.normal),
              ).shimmer(
                    primaryColor: Colors.white,
                    secondaryColor: Vx.violet300,
                    duration: Duration(seconds: 2)),),
                  ),

                  Expanded(child: Container()),

                  Material(
                    child: Container(
                      color: bg,
                      child:Padding(  padding: const EdgeInsets.all(14.0),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'What is your favourite color among these?',
                              textStyle: const TextStyle(
                                fontFamily: "Monsterrrat",
                                color: Vx.violet200,
                                backgroundColor: bg,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          pause: const Duration(milliseconds: 100000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),

                    ),
                  ),
                  Expanded(child: Container()),

                  const Padding( padding: EdgeInsets.all(14.0),
                      child: Material(child: Options())),
                  Expanded(child: Container()),

















                  Align(alignment: Alignment.bottomRight,
                      child: Padding( padding: const EdgeInsets.all(30),
                          child: ElevatedButton(  child : Text("Next"),
                            style: ElevatedButton.styleFrom(
                              primary: Vx.violet600 ,
                              elevation: 6,
                              onPrimary: Colors.white,
                              onSurface: Colors.grey,
                            ),onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LastPage ()),
                              );
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


/*enum Options { Red, Black, White, Peach}

class Options1 extends StatefulWidget {
  const Options1({Key? key}) : super(key: key);

  @override
  State<Options1> createState() => _Options1();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Options1 extends State<Options1> {
  Options? _character = Options.Red;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: Column(
        children: <Widget>[

          ListTile(
            title: const Text('Red'),
            leading: Radio<Options>(
              value: Options.Red,
              groupValue: _character,

              onChanged: (Options? value) {
                setState(() {
                  _character = value;
                });
              }, activeColor: Vx.violet400,
            ),
          ),
          ListTile(
            title: const Text('Black'),
            leading: Radio<Options>(
              value: Options.Black,
              groupValue: _character,
              onChanged: (Options? value) {
                setState(() {
                  _character = value;
                });
              },activeColor: Vx.violet400,
            ),
          ),
          ListTile(
            title: const Text('White'),
            leading: Radio<Options>(
              value: Options.White,
              groupValue: _character,
              onChanged: (Options? value) {
                setState(() {
                  _character = value;
                });
              },activeColor: Vx.violet400,
            ),
          ),
          ListTile(
            title: const Text('Peach'),
            leading: Radio<Options>(
              value: Options.Peach,
              groupValue: _character,
              onChanged: (Options? value) {
                setState(() {
                  _character = value;
                });
              },activeColor: Vx.violet400,
            ),
          ),
        ],
      ),
    );
  }
}
*/
