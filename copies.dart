import 'package:flutter/material.dart';

class DropdownExample1 extends StatefulWidget {
    @override
    _DropdownExample1State createState() {
      return _DropdownExample1State();
    }
  }
  
  class _DropdownExample1State extends State<DropdownExample1> {
    String _value;
  
    @override
    Widget build(BuildContext context) {
      return DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('1'),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('2'),
              value: 'two',
            ),
            DropdownMenuItem<String>(
              child: Text('3'),
              value: 'three',
            ),
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('COPIES'),
          
          value: _value,
        );
      
    }
  }