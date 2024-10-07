import 'package:flutter/material.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'PIN Verification',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Clear color for the title
              ),
              textAlign: TextAlign.left,
            ),
            // Added space for better readability
            Text(
              'A 6-digit verification pin will be sent to your\nemail address.',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black54, // Softer color for description
                height: 1.5, // Increased line height for better readability
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) {
                  return SizedBox(
                    width: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      onChanged: (value) {
                        if (value.length == 1 && index < 5) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Verify',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded edges
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have Account?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
