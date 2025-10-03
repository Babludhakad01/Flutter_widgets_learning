// Padding widget pure form ke 4 taraf space provide karta hai
Padding(
padding: const EdgeInsets.all(16),

// Form widget ke andar TextFormField rakha hai taaki validation aur submit easy ho
child: Form(
key: _formKey, // Form ko uniquely identify karne ke liye GlobalKey

    // SingleChildScrollView use kiya taki agar keyboard open ho to overflow na ho
    child: SingleChildScrollView(

      // Column widget vertically input fields aur button arrange karta hai
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        // children horizontally full width le sake (esp. button ke liye)
        children: [

          // -------- Name Field --------
          TextFormField(
            controller: nameController, // User ka input read/write karne ke liye

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10), // Field ke charo taraf rounded border
              ),
              labelText: "User Name",           // Field ke upar label dikhega
              fillColor: Colors.grey[300],      // Field ka background color
              filled: true,                     // fillColor show karne ke liye
              hintText: "Enter your Full Name", // Placeholder jab field empty ho
              prefixIcon: Icon(Icons.person),   // Field ke start me icon
            ),

            // Validator function run hota hai jab form submit hota hai
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter your Name"; // Agar input empty ho to error message
              }
              return null; // Valid input ke liye null return karo
            },
          ),

          // Vertical spacing between fields
          SizedBox(height: 20),

          // -------- Email Field --------
          TextFormField(
            controller: emailController, // Email input read/write ke liye
            keyboardType: TextInputType.emailAddress, 
            // Mobile keyboard me email friendly keys (@, .) show kare

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
                return "email not valid !"; // Simple email format check
              }
              return null;
            },
          ),

          // Vertical spacing
          const SizedBox(height: 16),

          // -------- Password Field --------
          TextFormField(
            controller: pwdController, // Password read/write ke liye
            obscureText: true, // Password ko hide karne ke liye (dots show)

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2), 
                // Red thick border for password
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: "Password",
              fillColor: Colors.grey[300],
              filled: true,
              hintText: "Enter your Password",
              prefixIcon: Icon(Icons.lock), // Lock icon start me
            ),

            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter password"; // Empty password error
              } else if (value.length < 6) {
                return "password length must be 6 character"; // Minimum length validation
              }
              return null; // Valid password
            },
          ),

          // Vertical spacing before submit button
          const SizedBox(height: 24),

          // -------- Submit Button --------
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple, // Button color
              padding: const EdgeInsets.symmetric(vertical: 16), // Button vertical padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Rounded button corners
              )
            ),

            onPressed: () {
              // Button press pe form validation run hota hai
              if (_formKey.currentState!.validate()) {
                // Agar sab validators pass ho jaye (null return)
                
                // Print inputs in console (debugging purpose)
                print("User Name ${nameController.text}");
                print("User Email ${emailController.text}");
                print("User password ${pwdController.text}");

                // Bottom message show kare user ko
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login Successful !")),
                );
              }
            },

            // Button text styling
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    ),
),
)
