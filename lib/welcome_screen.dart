import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components.dart';
import 'login_screen.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 125,
                backgroundImage: NetworkImage('https://media.istockphoto.com/id/1456230856/photo/cute-panda-riding-a-motorcycle-panda-delivery-3d-rendering.webp?a=1&b=1&s=612x612&w=0&k=20&c=POuuF_9bxzsM0kED00WWgwGzK-6HnzOxbZCR0me9Rpg='), 
                backgroundColor: Colors.white,
              ),
              const SizedBox(height: 30),
              const Text(
                'Welcome to Sanremo',
                style: TextStyle(
                  fontSize: 26,
                 color: Color.fromARGB(255, 179, 9, 122),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 200,
                child: roundedButton(
                  text: 'Log in',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 200,
                child: roundedButton(
                  text: 'Sign up',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignupScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
