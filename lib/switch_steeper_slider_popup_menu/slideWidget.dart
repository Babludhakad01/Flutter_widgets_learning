import 'package:flutter/material.dart';

class SlideWidget extends StatefulWidget {
  final String title;

  const SlideWidget({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _SlideWidget();
}

class _SlideWidget extends State<SlideWidget> {
  double curr_value = 0;
  double secondary_val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Color.fromRGBO(
                0,
                curr_value.toInt(),
                curr_value.toInt(),
                1,
              ),
            ),
            SizedBox(height: 50),

            /*
            Slider(
              // padding: EdgeInsets.all(10),
              allowedInteraction: SliderInteraction.slideOnly,
              onChangeStart: (value) {
                print(value);
              },
              activeColor: Colors.green,
              divisions: 100,
              thumbColor: Colors.red,
              inactiveColor: Colors.grey,
              label: curr_value.toStringAsFixed(0),
              value: curr_value,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  curr_value = value;
                });
              },
            ),

             */
            Slider(
              min: 0,
              max: 100,
              value: curr_value,
              secondaryTrackValue: secondary_val,
              divisions: 5, // Divide slider in step
              label: "${curr_value.round()}",
              activeColor: Colors.teal,
              inactiveColor: Colors.brown,
              // secondaryActiveColor: Colors.red,
              thumbColor: Colors.red,
              overlayColor: WidgetStateProperty.all(Colors.purple.withValues(alpha: 0.2)),
              onChanged: (value) {
                setState(() {
                  curr_value = value;
                });
              },
              onChangeStart: (val){
                print("Start $val");
              },
              onChangeEnd: (val){
                print("End $val");
              },
            ),
          ],
        ),
      ),
    );
  }
}
