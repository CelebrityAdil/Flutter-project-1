import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'login_screen.dart';
import 'Homescreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  // simple static variable to hold login status
  static bool isLoggedIn = false;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: const Color.fromARGB(255, 192, 11, 11),
          child: DashboardScreen.isLoggedIn
              ? const HomeScreen()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 185, 108, 8),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        ).then((_) => setState(() {})); // refresh when back
                      },
                      child: const Text('Sign Up'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 89, 11, 215),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        ).then((_) => setState(() {})); // refresh when back
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
