import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  final String title;

  const StepperWidget({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _StepperWidget();
}

class _StepperWidget extends State<StepperWidget> {
  int curr_idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: curr_idx,
        physics: ClampingScrollPhysics(),
        elevation: 7,
        margin: EdgeInsets.all(10),

        connectorThickness: 5,
        stepIconHeight: 40,
        stepIconWidth: 40,

        onStepTapped: (step) {
          setState(() {
            curr_idx = step;
          });
        },
        // connectorThickness: ,
        onStepContinue: () {
          setState(() {
            if (curr_idx < 2) {
              curr_idx++;
            }
          });
        },

        onStepCancel: () {
          setState(() {
            if (curr_idx > 0) {
              curr_idx--;
            }
          });
        },

        controlsBuilder: (context, details) {
          return Row(
            children: [
              ElevatedButton(
                onPressed: details.onStepContinue,
                child: Text("Next"),
              ),

              SizedBox(width: 10),
              ElevatedButton(
                onPressed: details.onStepCancel,
                child: Text("Cancel"),
              ),
            ],
          );
        },

        steps: [
          Step(
            state: curr_idx > 0 ? StepState.complete : StepState.indexed,

            title: Text("Step 1"),
            subtitle: Text("Personal Info"),
            content: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: "Name",
                  ),
                ),
              ],
            ),
            isActive: curr_idx == 0,

            stepStyle: StepStyle(
              connectorThickness: 10,
              boxShadow: BoxShadow(
                spreadRadius: 2,
                blurRadius: 3,
                color: Colors.greenAccent,
              ),
              border: BoxBorder.all(width: 2, color: Colors.black),

              connectorColor:  curr_idx==0? Colors.transparent : Colors.grey,
              color: curr_idx==0 ? Colors.red : Colors.green
            ),
          ),
          Step(
            title: Text("Step 2"),
            subtitle: Text("Qualification Information"),
            state: curr_idx > 1 ? StepState.complete : StepState.indexed,

            content: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: "Education",
                  ),
                ),
              ],
            ),
            isActive: curr_idx == 1,

            stepStyle: StepStyle(connectorThickness: 10),
          ),
          Step(
            state: curr_idx > 2 ? StepState.complete : StepState.indexed,

            title: Text("Third Step"),
            content: Text("Bank Information"),

            stepStyle: StepStyle(connectorThickness: 10),
          ),
        ],
      ),
    );
  }
}
