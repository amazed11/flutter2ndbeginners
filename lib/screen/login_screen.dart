import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome ! Login",
                style: GoogleFonts.acme(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                Icons.person,
              ))),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  print("u r logged in!");
                },
                icon: Icon(Icons.login),
                label: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
