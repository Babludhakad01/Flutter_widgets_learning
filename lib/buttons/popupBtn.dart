import 'package:flutter/material.dart';

class PopupBtnExample extends StatefulWidget {
  final String title;

  const PopupBtnExample({super.key, required this.title});

  @override
  State<PopupBtnExample> createState() => _PopupMenuExample();
}

class _PopupMenuExample extends State<PopupBtnExample> {
  String? selectedCity;

  var cities = ["Neemuch", "Mumbai", "Indore", "Mandsaur"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.orange,
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton<String>(
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              position: PopupMenuPosition.under,
              // 👈 under button open hoga
              icon: const Icon(
                Icons.location_city,
                color: Colors.orange,
                size: 35,
              ),

              // List of items (cities)
              itemBuilder: (context) => cities.map((city) {
                return PopupMenuItem(
                  value: city,
                  child: Text(city, style: const TextStyle(fontSize: 18)),
                );
              }).toList(),

              // When an item is selected
              onSelected: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),

            const SizedBox(height: 20),

            Text(
              selectedCity == null
                  ? "Koi city select nahi ki gayi 🏙️"
                  : "Selected City: $selectedCity",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text("Go to About Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
