import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.lock,
                color: Colors.blueAccent,
                size: 50,
              ),
            ),
            SizedBox(height: 20),

            // Welcome text
            Text(
              "Welcome",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),

            SizedBox(height: 20),

            // Textfield for Name
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 10),

            // Textfield for Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                fillColor: Colors.white,
                filled: true,
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, 'taskmanage');},
                  child: Text("Sign In"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blueAccent,
                  ),
                ),
                Text("or sign up with Google"),
                Image.asset(
                  'lib/Images/google.png',
                  height: 30,
                  width: 30,
                ),
              ],
            ),

            SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or you can sign up here",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {Navigator.pushNamed(context, '/signup');},
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
