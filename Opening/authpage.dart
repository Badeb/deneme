import 'package:ecodrive/Homepage/myhomepage.dart';
import 'package:ecodrive/Opening/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class Authpage  extends StatelessWidget {
  const Authpage ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?> (
        stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot) {
          // user logged in or not
            if(snapshot.hasData) {
              return MyHomePage();
            }
            else {
              return Login();
            }




          }

      )




















    );
  }
}
