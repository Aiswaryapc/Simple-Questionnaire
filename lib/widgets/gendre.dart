import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../views/first_page.dart';

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