import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //form ko identify & validate  krne ke liye
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Form",
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        //AppBar ka title
        centerTitle: true,
        // title center
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey, // form identify krne ke liye unique key
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Name Field
                // Text("Enter User Name :"),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "User Name",
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Enter your Full Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your Name";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20),

                //Email Field
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Email",
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Enter your Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your Email";
                    } else if (!value.contains("@")) {
                      return "email not valid !";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                //Password Field
                TextFormField(
                  controller: pwdController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    labelText: "Password",

                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Enter your Password",
                    prefixIcon: Icon(Icons.lock),

                  ), validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter password";
                    } else if(value.length < 6){
                      return "password length must be 6 character";
                    }
                    return null;
                },

                ),
                const SizedBox(height: 24),

                //Submit Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12),
                     )

                  ),
                  onPressed: (){
                    // Form Validation Check
                    if(_formKey.currentState!.validate()){
                      // if validation right then run
                      print("User Name ${nameController.text}");
                      print("User Email ${emailController.text}");
                      print("User password ${pwdController.text}");

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Login Successful !")),
                      );

                    }
                  }, child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
