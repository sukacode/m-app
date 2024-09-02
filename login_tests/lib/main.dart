import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Center(
          child: ElevatedButton(
              child: Text("data"),
              onPressed: () async {
                try {
                  // ignore: unused_local_variable
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: "testemail@gmail.com",
                          password: "password123");
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provide is too weak');
                  } else if (e.code == 'email-aclready-in-use') {
                    print('The account already exists for that email');
                  }
                } catch (e) {
                  print(e);
                }
              }),
        ),
      ),
    );
  }
}
