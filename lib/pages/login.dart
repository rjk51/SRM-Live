import 'package:flutter/material.dart';
import 'package:srm_live/components/square_tile.dart';
import 'package:srm_live/authentication/auth_service.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final void Function()? onTap;
  
  LoginPage({super.key, required this.onTap});

  void login(BuildContext context) async {
    // Implement login functionality here
    // get our auth service
    final authService = AuthService();

    // try to login
    try {
      await authService.signInWithEmailAndPassword(
        _emailController.text,
        _pwController.text,
      );
    }

    // catch any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }
  void loginWithGoogle(BuildContext context) async {
    final _auth = AuthService();

    try {
      await _auth.signInWithGoogle();
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 24, 22),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', width: 150, height: 150),
                const SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  width: double.maxFinite,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(22.0),
                    border: Border.all(
                      color: const Color.fromARGB(255, 31, 218, 147),
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 254, 193, 42),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: _pwController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.black),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 31, 218, 147),
                          ),
                          fixedSize:
                              MaterialStateProperty.all(const Size(250, 50)),
                        ),
                        onPressed: () {
                          login(context);
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.0,
                      width: 100.0,
                      color: const Color.fromARGB(255, 254, 193, 42),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'or login with',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 254, 193, 42)),
                      ),
                    ),
                    Container(
                      height: 1.0,
                      width: 100.0,
                      color: const Color.fromARGB(255, 254, 193, 42),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: "assets/google.png", onTap: () {
                      loginWithGoogle(context);
                    }),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "New at SRM Live? Create an account",
                  style: TextStyle(
                    color: Color.fromARGB(255, 31, 218, 147),
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 31, 218, 147),
                    ),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(const Size(270, 50)),
                  ),
                  onPressed: onTap,
                  child: const Text('Sign up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
