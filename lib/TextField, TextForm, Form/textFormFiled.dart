import 'package:flutter/material.dart';

// class FormPage extends StatefulWidget {
//   const FormPage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<FormPage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<FormPage> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//         title: Text(widget.title),
//       ),
//       body:
//     );
//   }
// }

class FormPage extends StatelessWidget {
  TextEditingController myController = TextEditingController();

  //form state manage karne ke liye ke
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                TextFormField(
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                Text("Email"),
                TextFormField(
                  // controller: myController,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    } else if(!value.contains("@")){
                      return "valid email id";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          // form valid submit action
                          print("form submitted ${_formKey}");
                        }
                      },
                      child: Text('Submit')),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
