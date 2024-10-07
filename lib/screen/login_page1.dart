import 'package:flutter/material.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Your Email Address',
                  style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),

                Text(
                  'A 6 digit verification pin will send to your\n email address',
                  style: TextStyle(fontSize: 16,),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20,),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Rounded edges
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have Account?",style: TextStyle(fontWeight: FontWeight.bold),),
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
        ),
      ),
    );
  }
}
