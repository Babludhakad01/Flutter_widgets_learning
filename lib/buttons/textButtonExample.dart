import 'package:flutter/material.dart';

class TextButtonPage extends StatefulWidget {
  final String title;

  const TextButtonPage({super.key, required this.title});

  @override
  State<TextButtonPage> createState() => _TextButtonPage();
}

class _TextButtonPage extends State<TextButtonPage> {
  bool isFav = false;
  String? SelectedCity;

  var cities = ["Neemuch", "Mumbai", "Indore", "Mandsaur"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Text Button
            Text(
              "Normal Text Button",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                print("On Text button Clicked");
              },

              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),

                foregroundColor: Colors.red,
                backgroundColor: Colors.teal,
              ),
              child: Text(
                "Click me ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(height: 10),

            // Icon Button
            Text("Icon Button", style: TextStyle(fontWeight: FontWeight.bold)),
            IconButton(
              // tooltip: "Click me",
              icon: Icon(Icons.pause),
              isSelected: isFav,
              // color: isFav ? Colors.red : Colors.grey,
              iconSize: 30,
              splashColor: Colors.red,
              splashRadius: 25,
              padding: EdgeInsets.all(120),
              selectedIcon: Icon(Icons.play_arrow),
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },

              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),

                //backgroundColor: Colors.teal,
              ),
            ),
            Divider(height: 10),

            // Elevated Button
            Text(
              "Elevated Button ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 5,
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              onPressed: () {
                print("Elevated Button Clicked");
              },
              child: Text("Submit"),
            ),

            Divider(height: 10),

            // Drop Down Button
            DropdownButton<String>(
              value: SelectedCity,
              hint: Text("Select Option"),
              icon: Icon(Icons.arrow_downward, color: Colors.deepPurple),
              iconSize: 28,
              dropdownColor: Colors.white,
              borderRadius: BorderRadius.circular(12),
              padding: EdgeInsets.symmetric(horizontal: 12),
              style: TextStyle(color: Colors.black26, fontSize: 18),

              underline: SizedBox(),
              items: cities.map((String city) {
                return DropdownMenuItem<String>(value: city, child: Text(city));
              }).toList(),

              onChanged: (String? newVal) {
                setState(() {
                  SelectedCity = newVal!;
                });
              },
            ),

            Divider(height: 10),



          ],
        ),
      ),
    );
  }
}
