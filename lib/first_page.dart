import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:form/country.dart';
import 'package:form/next_page.dart';

import 'package:velocity_x/velocity_x.dart';


final titleController = TextEditingController();

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {




  @override
  Widget build(BuildContext context) {
    return  Container(
        color: bg,
        child: Column(
          children: [
            const SizedBox(height: 60,),
            Material(

              child:AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'SELF INTRODUCTION',
                      textStyle: const TextStyle(
                        fontFamily: "Monsterrrat",
                        color: Vx.violet200,
                        backgroundColor: bg,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 600),
                    ),
                  ],
                  pause: const Duration(milliseconds: 500),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
            ),
            const SizedBox(height: 70,),
            Text1("Name"),
        Padding(
            padding: const EdgeInsets.all(14.0),
            child: Material(
                type: MaterialType.canvas,
                borderRadius: BorderRadius.circular(10),
                child: TextField(
                  style:const TextStyle(color: Vx.violet800),
                  textCapitalization: TextCapitalization.words,
                  decoration:const InputDecoration(
                    fillColor: Colors.white,
                      filled: true,


                      hintText: "Type here",
                      hintStyle: TextStyle(fontSize: 14,color: Colors.black),
                      border: InputBorder.none),
                  maxLines: 1,
                  controller: titleController,


                ))),
            Text1("Gender"),
            const Material(child: Gender()),
            Text1("Country"),
            Padding(padding: const EdgeInsets.all(14),
              child: Align(alignment: Alignment.centerLeft,
                child: Container(
                  height: 40,
                    width: 200,
                    color: Colors.white,
                    child: Country()),
              ),
            ),

            Expanded(child: Container(
              color: bg,
            )),




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
                          MaterialPageRoute(builder: (context) => SecondPage ()),
                        );
                      },
                    ))),




          ],
        ),
      );
  }
}

enum GenderTypes { Male, Female, Others}

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _Gender();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Gender extends State<Gender> {
  GenderTypes? _character = GenderTypes.Male;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Female'),
            leading: Radio<GenderTypes>(
              value: GenderTypes.Male,
              groupValue: _character,

              onChanged: (GenderTypes? value) {
                setState(() {
                  _character = value;
                });
              }, activeColor: Vx.violet400,
            ),
          ),
          ListTile(
            title: const Text('Male'),
            leading: Radio<GenderTypes>(
              value: GenderTypes.Female,
              groupValue: _character,
              onChanged: (GenderTypes? value) {
                setState(() {
                  _character = value;
                });
              },activeColor: Vx.violet400,
            ),
          ),
          ListTile(
            title: const Text('Others'),
            leading: Radio<GenderTypes>(
              value: GenderTypes.Others,
              groupValue: _character,
              onChanged: (GenderTypes? value) {
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




const bg = Color(0xFF181c25);

Widget Text1( text) {
  return Align(   alignment: Alignment.centerLeft,
    child: Material(
      child: Container(
        color: bg,
        child: Padding(
            padding: const EdgeInsets.all(14.0),
            
                child: Text(text, style:const TextStyle(
                    fontFamily: "Monsterrat",

                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    fontStyle: FontStyle.normal),
                ).shimmer(
                    primaryColor: Colors.white,

                    secondaryColor: Vx.violet700,
                    duration:const Duration(seconds: 2)),),
      ),
    ),
  );}



