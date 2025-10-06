import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  final String title;

  const SignupPage({super.key, required this.title});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Form key to validate Input
  final _signupKey = GlobalKey<FormState>();

  // controller for handle Text Field
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  bool isVisible = false;

  //Gender Checkbox
  bool _isMale = false;
  bool _isFemale = false;

  //Age Status Radio button
  String? _ageStatus = "No";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 8,
        // shadow under appbar
        shadowColor: Colors.black54,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.teal,
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.tealAccent, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          //form widget to handle input validation
          child: Form(
            key: _signupKey,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                // Card like box for form with shadow
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1,
                      offset: Offset(3, 6),
                    ),
                  ],
                ),
                // TextForm Field Start
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 28,
                          fontStyle: FontStyle.italic,
                          // text ko vertically align krne ke liye
                          textBaseline: TextBaseline.alphabetic,
                          // locale: Locale('hi'), // Language or region specify
                          fontWeight: FontWeight.bold,
                          // foreground: Paint()
                          //   ..shader = LinearGradient(
                          //     colors: [Colors.blue, Colors.red, Color],
                          //   ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                          color: Colors.teal.shade700,
                          // background: Paint()
                          //   ..color  = Colors.yellow
                          //   ..style = PaintingStyle.fill
                          shadows: [
                            Shadow(
                              color: Colors.orange,
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],

                          decoration: TextDecoration.underline,
                          fontFamily: "Roboto",
                          fontFamilyFallback: ["Arial", "SansSerif"],

                          // overflow: TextOverflow.ellipsis // dot.. add
                        ),
                        maxLines: 1, // force to set one line
                      ),
                    ),

                    SizedBox(height: 20),

                    // Name Field
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),

                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Name";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 16),

                    //Email Field
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Enter Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        } else if (!value.contains("@")) {
                          return "please enter valid email id";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    //Password Field
                    TextFormField(
                      controller: _passwordController,
                      obscureText: isVisible,
                      obscuringCharacter: "*",

                      decoration: InputDecoration(
                        labelText: "Enter Password",

                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: isVisible
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a password";
                        } else if (value.length < 6) {
                          return "Max password len 6";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    // Phone Number
                    TextFormField(
                      controller: _numberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Enter Contact details",
                        prefixIcon: Icon(Icons.phone),
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter contact details";
                        } else if (value.length > 10) {
                          return "please enter correct mobile number";
                        }
                      },
                    ),
                    SizedBox(height: 20),

                    // Gender Selection
                    const Text(
                      "Select Gender",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          tristate: true, // allow null value
                          value: _isMale,
                          activeColor: Colors.teal,
                          onChanged: (value) {
                            setState(() {
                              _isMale = value!;
                              if (_isMale) {
                                _isFemale = false;
                              }
                            });
                          },
                        ),

                        const Text("Male"),
                        SizedBox(width: 20),

                        Checkbox(
                          // tristate: true,
                          value: _isFemale,
                          activeColor: Colors.teal,
                          onChanged: (value) {
                            setState(() {
                              _isFemale = value!;
                              if (_isFemale) _isMale = false;
                            });
                          },
                        ),
                        const Text("Female"),
                      ],
                    ),

                    const SizedBox(height: 16),


                    // Age Button
                    const Text(
                      "Are You 18 year or Older ?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RadioGroup<String>(
                      groupValue: _ageStatus,
                      onChanged: (String? newVal) {
                        setState(() {
                          _ageStatus = newVal;
                        });
                      },

                      child: Row(

                        children: [
                          Radio<String>(value: "Yes"),
                          Text("Yes"),
                          SizedBox(width: 20),
                          Radio<String>(value: "No"),
                          Text("No"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Submit Button
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          if (_signupKey.currentState!.validate()) {
                            //Check Gender and age
                            if (_isMale && _isFemale) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Please Select a gender"),
                                ),
                              );
                              return;
                            }
                            if (_ageStatus == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Please Select Age Status"),
                                ),
                              );
                              return;
                            }
                            // if all is valid
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Signup Successful !\n WelCome ${_nameController.text}",
                                ),
                                backgroundColor: Colors.teal,
                              ),
                            );
                            print("User Name ${_nameController.text}");
                            print("User Email ${_emailController.text}");
                            print("User Password ${_passwordController.text}");
                            print(
                              "User Phone Number ${_numberController.text}",
                            );
                            print("User Phone Gender ");
                            print("User Phone Age Status ");
                          }
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
