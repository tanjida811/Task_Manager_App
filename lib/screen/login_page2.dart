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
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),

            Text(
              'A 6 digit verification pin will send to your email address',
              style: TextStyle(fontSize: 16,),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index){
               return SizedBox(
                 width: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    obscureText: true,

                    onChanged: (value){
                      if(value.length == 1 && index<5){
                        FocusScope.of(context).nextFocus();
                      }
                    },

                  ),
                );
              },),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height:50 ,
              width: 390,
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Verify',style: TextStyle(color: Colors.white),),
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
                Text("Have Account?"),
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
