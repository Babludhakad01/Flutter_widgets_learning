import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key, required this.title});

  final String title;

  @override
  State<TextFieldPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TextFieldPage> {
  TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    // for dispose my controller
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name Field
              Text(
                "Enter Your Name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 8),

              TextField(
                controller: myController,
                onChanged: (val) => print(val),
                // readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // hintText: "User Name",
                  labelText: "Name",
                ),
              ),
              SizedBox(height: 20),

              //Email Field
              Text(
                "Enter Email",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
              ),
              TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                maxLength: 10, // limit userName or Pin Length
                cursorColor: Colors.red, // for cursor color
                cursorWidth: 1,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), // for Icon use
                   suffixIcon: Icon(Icons.account_box), // Suffix back icon in input field
                  fillColor: Colors.grey[300],
                  filled: true,

                  border: OutlineInputBorder(),
                  hintText: "email address",

                ),
              ),
              SizedBox(height: 3),

              Text(
                "Password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
              ),
              TextField(
                controller: TextEditingController(),
                obscureText: true, // Hide Text (Password)

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password",
                ),
              ),

              SizedBox(height: 30),

              //Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    //Form Submit action
                    print("form submitted");
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
              ),

              // Text(
              //   "Enter User Name",
              //   style: TextStyle(
              //     fontSize: 16,
              //     fontWeight: FontWeight.bold,
              //     fontStyle: FontStyle.italic,
              //     // backgroundColor: Colors.blue,
              //     textBaseline: TextBaseline.alphabetic,
              //      decoration: TextDecoration.underline,
              //     decorationColor: Colors.red,
              //     decorationStyle: TextDecorationStyle.double,
              //     decorationThickness: 2,
              //     // fontFamily: "Roboto",
              //       overflow: TextOverflow.ellipsis,
              //
              //     // foreground: Paint()..shader,
              //       inherit: true, // Take Parent Style
              //       locale: Locale('en', 'US'),
              //
              //     shadows: [
              //       Shadow(color: Colors.green, offset: Offset(0, 1), blurRadius: 1)
              //     ]
              //
              //
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
