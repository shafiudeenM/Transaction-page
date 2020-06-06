
 import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
    @override
    SwitchWidgetClass createState() => new SwitchWidgetClass();
  }
  
class SwitchWidgetClass extends State {

  bool switchControl = false;
  var textHolder = 'Switch is OFF';

  void toggleSwitch(bool value) {

      if(switchControl == false)
      {
        setState(() {
          switchControl = true;
          textHolder = 'Switch is ON';
        });
        print('Switch is ON');
        // Put your code here which you want to execute on Switch ON event.

      }
      else
      {
        setState(() {
          switchControl = false;
          textHolder = 'Switch is OFF';
        });
        print('Switch is OFF');
        // Put your code here which you want to execute on Switch OFF event.
      }
  }
  
    @override
    Widget build(BuildContext context) {
      return Column( 
              mainAxisAlignment: MainAxisAlignment.end,
              children:[ Transform.scale( 
              scale: 1.5,
              child: Switch(
              onChanged: toggleSwitch,
              value: switchControl,
              activeColor: Colors.green,
              activeTrackColor: Colors.green[300],
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
              
            )
            
          ), 

        //Text('$textHolder', style: TextStyle(fontSize: 4),)

      ]);
  }
}