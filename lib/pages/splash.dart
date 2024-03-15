import 'package:flutter/material.dart';
import 'package:srm_live/authentication/auth_gate.dart';
import 'package:srm_live/pages/register.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 24, 22),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png', 
              width: 250, 
              height: 250
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('SRM', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 12, 77, 162))),
                SizedBox(width: 10),
                Text('Live', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 254, 193,42))),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthGate()));
              },           
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 31, 218, 147),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.fromLTRB(65, 27, 65, 27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('Get Started', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ]
        ),
      ),
    );
  }
}