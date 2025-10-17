import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchWidgetPage extends StatefulWidget {
  final String title;

  const SwitchWidgetPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _SwitchWidgetPage();
}

class _SwitchWidgetPage extends State<SwitchWidgetPage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        color: isDark ? Colors.black : Colors.white60,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterSwitch(
                value: isDark,
                onToggle: (value) {
                  setState(() {
                    isDark = value;
                  });
                },

                activeColor: Colors.green,
                inactiveColor: Colors.brown,
                switchBorder: Border.all(color: Colors.grey, width: 3),
                showOnOff: true,
                activeText: "ON",
                activeIcon: Icon(Icons.nights_stay_rounded),
                inactiveIcon: Icon(Icons.sunny),
                inactiveText: "OFF",
                // toggleColor: Colors.yellow,
                activeToggleColor: Colors.brown ,
                inactiveToggleColor: Colors.orange,
                 toggleSize: 45,
                width: 100,
                height: 55,

               // toggleBorder: Border.all(color: Colors.teal, width: 4),

                valueFontSize: 20, // on off ki size
                // inactiveTextColor: Colors.black,
                
              ),
              
              const SizedBox(height: 20,),
              
              Text(isDark ? "Dark Mode" : "Light Mode")
            ],
          ),
        ),
      ),
    );
  }
}
