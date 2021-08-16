import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;

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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Enter Username...",
                    labelText: "Username",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder(),
                    hintText: "Enter password...",
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        showPassword ? Icons.visibility_off : Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                  ),
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
