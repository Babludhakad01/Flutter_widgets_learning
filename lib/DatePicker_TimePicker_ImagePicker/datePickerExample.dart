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
      barrierColor: Colors.black26,

      // Background color when calendar open
      textDirection: TextDirection.ltr,
      keyboardType: TextInputType.datetime,

      initialDatePickerMode: DatePickerMode.day,
      errorFormatText: "Invalid format",
      fieldHintText: "dd/mm/yyyy",
      selectableDayPredicate: (DateTime date) {
        //logic here
        if (date.weekday == DateTime.sunday ||
            date.weekday == DateTime.saturday) {
          return false;
        }
        return true;
      },

      // locale: Locale('hi',"IN"), // for Language Calendar
      // default Today
      firstDate: DateTime(2000),
      // Calendar Start
      lastDate: DateTime(2028),
      // Calendar end
      helpText: "Select your Date Of Birth",
      // Top title
      cancelText: "Back",

      // Cancel Button Label
      confirmText: "Select",
      // Ok Button Label

      //Customize date Picker
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            datePickerTheme: DatePickerThemeData(
              // for design day option
              dayShape: WidgetStateProperty.resolveWith<OutlinedBorder>((
                states,
              ) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                );
              }),

              subHeaderForegroundColor: Colors.black,
              headerBackgroundColor: Colors.blueAccent[200],
              headerForegroundColor: Colors.white,
              headerHeadlineStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),

              headerHelpStyle: TextStyle(color: Colors.orangeAccent),
              backgroundColor: Colors.indigoAccent[100],
              shadowColor: Colors.greenAccent,
              elevation: 10,
              surfaceTintColor: Colors.yellow,

              // Dialog ka shape design
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                side: BorderSide(color: Colors.grey, width: 2),
              ),

              // Day Cell Style Design
              dayStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              // Design For Day Background Color
              dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected))
                  return Colors.teal;
                else if (states.contains(WidgetState.disabled))
                  return Colors.red[300];
                return Colors.transparent;
              }),

              // tap hone pr ripple effect dekhe
              dayOverlayColor: WidgetStateProperty.all(
                Colors.tealAccent.withValues(alpha: 0.2),
              ),

              // Today Styling properties
              // todayForegroundColor: WidgetStateProperty.all(Colors.brown),
              // todayBackgroundColor: WidgetStateProperty.all(Colors.grey),
              todayBorder: BorderSide(color: Colors.red, width: 1),

              //Year Style Design
              yearStyle: TextStyle(color: Colors.red, fontSize: 18),
              yearForegroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) return Colors.white;
                return Colors.black;
              }),
              yearBackgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) return Colors.teal;
                return Colors.white;
              }),

              weekdayStyle: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          child: child!,
        );
      },

      calendarDelegate: GregorianCalendarDelegate(),
      switchToCalendarEntryModeIcon: Icon(Icons.edit_calendar),
      switchToInputEntryModeIcon: Icon(Icons.calendar_month_outlined),
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
