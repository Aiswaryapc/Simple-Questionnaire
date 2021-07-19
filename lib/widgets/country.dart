import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';



class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _Country();
}

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
          icon: const Expanded(
            child: Align (alignment: Alignment.centerRight,
                child: Icon(Icons.arrow_drop_down,color: Vx.violet800,)),
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


