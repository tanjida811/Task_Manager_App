import 'package:flutter/material.dart';

class LoginPage4 extends StatelessWidget {
  const LoginPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0), // Horizontal padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Join With Us",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold), // Changed color to match theme
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 22),

              // Email TextField
              _buildTextField(hintText: 'Email'),
              const SizedBox(height: 16),

              // First Name TextField
              _buildTextField(hintText: 'First Name'),
              const SizedBox(height: 16),

              // Last Name TextField
              _buildTextField(hintText: 'Last Name'),
              const SizedBox(height: 16),

              // Mobile TextField
              _buildTextField(hintText: 'Mobile'),
              const SizedBox(height: 16),

              // Password TextField
              _buildTextField(hintText: 'Password', obscureText: true),
              const SizedBox(height: 24),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0), // Adjusted padding for button
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 8),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 5, // Add elevation for a shadow effect
                ),
              ),
              const SizedBox(height: 38),

              // Account Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an Account?",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  TextButton(
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      // Add your navigation logic here
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]), // Hint text color
        filled: true,

      ),
    );
  }
}
