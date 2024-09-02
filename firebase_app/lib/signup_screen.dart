import 'package:firebase_app/login_screen.dart';
import 'package:firebase_app/values/app_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:crypto/crypto.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpscreenState();
}

class _SignUpscreenState extends State<SignUpScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  String _email = "";
  String _password = "";

  // Function to hash the password using SHA-256
  String hashPassword() {
    var bytes = utf8.encode(_password); // Convert the password to bytes
    var digest = sha256.convert(bytes); // Calculate the SHA-256 hash
    return digest.toString(); // Convert the hash to a string
  }

  void _handleSignUp() async {
    try {
      // Hash the password using SHA-256
      String hashedPassword = hashPassword();

      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: _email, password: hashedPassword);
      print("User Registered: $userCredential.user!.email");

      //test password input
      print("Original Password : $_password");
      //test password hash
      print("Hashed Password : $hashedPassword");
    } catch (e) {
      print("Error During Registration: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  autofocus: true,
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Password";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _handleSignUp();
                      }
                    },
                    child: Text("Sign Up")),
                Text(
                  AppStrings.alreadyRegistered,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text("Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
