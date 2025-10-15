import 'package:flutter/material.dart';

class CustomTImePickerExample extends StatefulWidget {
  const CustomTImePickerExample({super.key});

  @override
  State<CustomTImePickerExample> createState() => _CustomTImePickerExample();
}

class _CustomTImePickerExample extends State<CustomTImePickerExample> {
  TimeOfDay? _selectedTime;

  Future<void> _timePicker() async {
    final TimeOfDay? _time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      cancelText: "Cancel",
      confirmText: "OK",
      helpText: "Pick your preferred time",
      onEntryModeChanged: (mode) {
        print("Switched to $mode mode");
      },

      // orientation: Orientation.portrait,
      switchToInputEntryModeIcon: Icon(Icons.more_time_sharp),
      // switchToTimerEntryModeIcon: Icon(Icon),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            // theme set for outside clock area
            timePickerTheme: TimePickerThemeData(
              backgroundColor: Colors.grey,
              cancelButtonStyle: TextButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              confirmButtonStyle: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              // Set for AM / PM Property
              dayPeriodColor: Colors.green,
              dayPeriodBorderSide: BorderSide(color: Colors.black54, width: 1),
              dayPeriodShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  bottomRight: Radius.circular(12),
                ),
              ),
              // for dial log property
              dialBackgroundColor: Colors.black12,
              dialHandColor: Colors.green,
              dialTextColor: Colors.white60,
              dialTextStyle: TextStyle(fontSize: 20),
              // elevation: 8,
              entryModeIconColor: Colors.black38,
              hourMinuteColor: Colors.blueGrey,
              hourMinuteTextColor: Colors.white60,
              hourMinuteShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(20, 30)),
              ),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.black12, width: 1),
              ),

              // Cancel Button
            ),
          ),

          child: child!,
        );
      },
    );

    if (_time != null && _time != _selectedTime) {
      setState(() {
        _selectedTime = _time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Picker"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedTime == null
                  ? "please Select Time"
                  : "Selected Time: ${_selectedTime!.hourOfPeriod} : ${_selectedTime!.minute} ${_selectedTime!.period == DayPeriod.am ? "AM" : "PM"}",
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),
            SizedBox(height: 20),

            ElevatedButton(onPressed: _timePicker, child: Text("Select Time")),
          ],
        ),
      ),
    );
  }
}
