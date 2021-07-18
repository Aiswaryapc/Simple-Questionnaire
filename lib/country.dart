import 'package:flutter/material.dart';
import 'package:form/first_page.dart';
import 'package:velocity_x/velocity_x.dart';

/*class Country extends StatefulWidget {
  @override
  _Country createState() => _Country();
}

class _Country extends State<Country> {
  late String _chosenValue;
  late String value;


  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: const EdgeInsets.all(20.0),
          child: DropdownButton<String>(
            value: _chosenValue,
            //elevation: 5,
            style: TextStyle(color: Colors.black),

            items: <String>[
              'Afghanistan ',
              'Argentina'
              'Armenia ',
              'Australia ',
              'Bangladesh ',
              'Belgium ',
              'Bhutan ',
              'Bolivia',
              'Brazil ',
              'Canada',
              'Chile',
              'China',
              'Colombia',
              'Egypt',
              'Germany',
              'India',
              'Japan',
              'Kenya',
              'Malasia',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(
              "Please choose a Country",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (String? value) {
              setState(() {
                _chosenValue = value!;
              });
            },
          ),
        );


  }
}*/






/// This is the stateful widget that the main application instantiates.
class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _Country();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Country extends State<Country> {
  String dropdownValue = 'India';

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(     padding: const EdgeInsets.all(10.0),
        child: DropdownButton<String>(
          value: dropdownValue,
          dropdownColor: Colors.white,
          icon: Expanded(
            child: Align (alignment: Alignment.centerRight,
                child: const Icon(Icons.arrow_drop_down,color: Vx.violet800,)),
          ),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple,fontFamily: "Monsterrat",
              fontWeight: FontWeight.w600,
              fontSize: 17,
              fontStyle: FontStyle.normal),

          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;

            });
          },
          items: <String>['India',
            'Argentina','Armenia ',
            'Australia ',
            'Bangladesh ',
            'Belgium ',
            'Bhutan ',
            'Bolivia',
            'Brazil ',
            'Canada',
            'Chile',
            'China',
            'Colombia',
            'Egypt',
            'Germany',
            'Afghanistan',
            'Japan',
            'Kenya',
            'Malasia',]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}


