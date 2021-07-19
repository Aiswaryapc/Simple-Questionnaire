import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form/views/first_page.dart';
import 'package:velocity_x/velocity_x.dart';

import 'options1.dart';


class Options3 extends StatefulWidget {

  const Options3({Key? key,}) : super(key: key);

  @override
  _Options3State createState() => _Options3State();
}

class _Options3State extends State<Options3> {


  Color _containerColor1 = Colors.white;
  Color _containerColor2 = Colors.white;
  Color _containerColor3 = Colors.white;
  Color _containerColor4 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: bg,
        child: Column(
          children: [
            Ink(
              child: InkWell(
                child: Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: const Align(alignment: Alignment.center,
                        child: Text('Alia Bhatt',)),

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _containerColor1 ,

                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),),
                ),

                onTap:  () {
                  if(flag==4){


                    setState(() {

                      _containerColor1 = Vx.violet800;
                      flag= 5;
                      Third=1;
                    });}
                },

              ),
            ),
            Ink(
              child: InkWell(
                child: Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: const Align(alignment: Alignment.center,
                        child: Text('Deepika',)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _containerColor2,

                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),),
                ),
                onTap:  () {
                  if(flag==4){


                    setState(() {

                      _containerColor2 = Vx.violet800;
                      flag= 5;
                      Third=2;
                    });}
                },
              ),
            ),
            Ink(
              child: InkWell(
                child: Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 200,
                    child:const Align(alignment: Alignment.center,
                        child: Text('Anushka',)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _containerColor3,

                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),),
                ),
                onTap:  () {    if(flag==4){


                  setState(() {

                    _containerColor3 = Vx.violet800;
                    flag= 5;
                    Third=3;
                  });}
                },
              ),
            ),
            Ink(
              child: InkWell(
                child: Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: const Align(alignment: Alignment.center,
                        child: Text('Shraddha',)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _containerColor4,

                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),),
                ),
                onTap:  () {    if(flag==4){


                  setState(() {

                    _containerColor4 = Vx.violet800;
                    flag= 5;
                    Third=4;
                  });}
                },
              ),
            )
          ],
        )

    );
  }
}