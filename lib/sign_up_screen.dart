import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/login_screen.dart';
import 'components.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor:Color.fromARGB(255, 239, 232, 224),
    elevation: 2,
    leading: BackButton(color: Colors.black), 
  ),
      body: GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:  Color.fromARGB(255, 179, 9, 122),
                    ),
                  ),
                  const SizedBox(height: 30),
                  roundedInputField(
                    label: 'Name',
                    controller: nameController,
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter your name' : null,
                  ),
                  const SizedBox(height: 20),
                  roundedInputField(
                    label: 'Email',
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your email';
                      } else if (!value.contains('@')) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  roundedInputField(
                    label: 'Password',
                    controller: passwordController,
                    obscureText: true,
                    validator: (value) => value!.length < 6
                        ? 'Password must be at least 6 characters'
                        : null,
                  ),
                  const SizedBox(height: 20),
                  roundedInputField(
                    label: 'Confirm Password',
                    controller: confirmPasswordController,
                    obscureText: true,
                    validator: (value) =>
                        value != passwordController.text
                            ? 'Passwords do not match'
                            : null,
                  ),
                  const SizedBox(height: 20),
                  roundedButton(
                    text: 'Sign up',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Signup logic will be implemented here 





                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
