import 'package:flutter/material.dart';
import 'package:srm_live/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:srm_live/authentication/login_or_reg.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
          //if the user is logged in
          if(snapshot.hasData){
            return const HomePage();
          }
          
            
          else{
            return const LoginOrRegister();
          }
        }

      ),
    );
  }
}