import 'package:flutter/material.dart';
import 'package:login_screen/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 150),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "times new roman",
                        fontSize: 28,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Opacity(
                opacity: 0.8,
                child: Image.asset("assets/images/Clothes1.jpg"),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const LoginScreen()),
                          ),
                        );
                      },
                      child: const Text("Login"),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Sign up"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
