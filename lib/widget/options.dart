import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form/first_page.dart';
import 'package:velocity_x/velocity_x.dart';


class Options extends StatefulWidget {

  const Options({Key? key,}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {

  int flag=0;
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
                      child: Text('Red',)),

                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _containerColor1 ,

                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                ),),
              ),

              onTap:  () {
                if(flag==0){


                setState(() {

                  _containerColor1 = Vx.violet800;
                  flag= 1;
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
                      child: Text('Blue',)),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _containerColor2,

                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),),
              ),
              onTap:  () {
          if(flag==0){


                setState(() {

                  _containerColor2 = Vx.violet800;
                  flag= 2;
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
                      child: Text('Black',)),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _containerColor3,

                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),),
              ),
              onTap:  () {    if(flag==0){


                setState(() {

                  _containerColor3 = Vx.violet800;
                  flag= 3;
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
                      child: Text('White',)),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _containerColor4,

                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),),
              ),
              onTap:  () {    if(flag==0){


                setState(() {

                  _containerColor4 = Vx.violet800;
                  flag= 4;
                });}
              },
            ),
          )
        ],
      )

    );
  }
}
