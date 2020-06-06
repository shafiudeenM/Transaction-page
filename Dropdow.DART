import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
    @override
    _DropdownExampleState createState() {
      return _DropdownExampleState();
    }
  }
  
  class _DropdownExampleState extends State<DropdownExample> {
    String _value;
  
    @override
    Widget build(BuildContext context) {
      return DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('Spiral Bind'),
              value: 'one',
            ),
            DropdownMenuItem<String>(
              child: Text('Chart Bind'),
              value: 'two',
            ),
            DropdownMenuItem<String>(
              child: Text('None'),
              value: 'three',
            ),
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('BINDING'),
          
          value: _value,
        );
      
    }
  }