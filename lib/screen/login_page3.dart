import 'package:flutter/material.dart';

class LoginPage3 extends StatelessWidget {
  const LoginPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: Padding(
        padding: const EdgeInsets.all(28.0), // Consistent padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Set Password",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Use a clear color
              ),
              textAlign: TextAlign.left,
            ),

            Text(
              'Minimize length password 8 characters with\nletter and number combination',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54, // Lighter color for description
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Password TextField
            _buildPasswordTextField(hintText: 'Password'),
            const SizedBox(height: 16),

            // Confirm Password TextField
            _buildPasswordTextField(hintText: 'Confirm Password'),
            const SizedBox(height: 24),

            // Confirm Button
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Rounded edges
                ),
                elevation: 5, // Shadow effect for the button
              ),
            ),
            const SizedBox(height: 40),

            // Account Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an Account?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
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
    );
  }

  Widget _buildPasswordTextField({required String hintText}) {
    return TextField(
      obscureText: true, // Hide the password
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400]), // Hint text color
        filled: true,
      ),
    );
  }
}
