import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Get Started With",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 34,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
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
                height: 40,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text("Forget Password ?"),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have Account?"),
                      TextButton(
                        child: Text(
                          "Sing up",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
