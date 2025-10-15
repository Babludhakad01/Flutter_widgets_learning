import 'package:flutter/material.dart';

class DatePickerExample extends StatefulWidget {
  final String title;

  const DatePickerExample({super.key, required this.title});

  @override
  State<DatePickerExample> createState() => _DatePickerExample();
}

class _DatePickerExample extends State<DatePickerExample> {
  DateTime? _selectedTime;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      // for Calendar kese open ho mtlb input ya calendar ya dono
      initialEntryMode: DatePickerEntryMode.calendar,
      // default true for other area click hide calendar
      barrierDismissible: true,
      barrierColor: Colors.black26, // Background color when calendar open

      textDirection: TextDirection.ltr,
      keyboardType: TextInputType.datetime,

      initialDatePickerMode: DatePickerMode.day,
      errorFormatText: "Invalid format",
      fieldHintText: "dd/mm/yyyy",
      selectableDayPredicate: (DateTime date){
        //logic here
        if(date.weekday== DateTime.sunday && date.weekday== DateTime.saturday){
          return false;
        }
        return true;

      },

      // locale: Locale('hi',"IN"), // for Language Calendar
      // default Today
      firstDate: DateTime(2020),
      // Calendar Start
      lastDate: DateTime(2028),
      // Calendar end
      helpText: "Slect your DOB",
      // Top title
      cancelText: "Back",

      // Cancel Button Label
      confirmText: "Select", // Ok Button Label
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedTime == null
                  ? "No Date Chosen!"
                  : "Selected Date ${_selectedTime!.day}/${_selectedTime!.month}/${_selectedTime!.year}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            ElevatedButton(onPressed: _pickDate, child: Text("Pick a Date")),
          ],
        ),
      ),
    );
  }
}
