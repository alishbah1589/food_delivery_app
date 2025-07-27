import 'package:flutter/material.dart';
import 'components.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 232, 224),
        elevation: 2,
        leading: const BackButton(color: Colors.black),
      ),
      body: GradientBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 350),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const SizedBox(height: 20),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://media.istockphoto.com/id/1456230856/photo/cute-panda-riding-a-motorcycle-panda-delivery-3d-rendering.webp?a=1&b=1&s=612x612&w=0&k=20&c=POuuF_9bxzsM0kED00WWgwGzK-6HnzOxbZCR0me9Rpg='),
                        backgroundColor: Colors.transparent,
                      ),
                      const Text(
                        'Sanremo',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color.fromARGB(255, 185, 39, 137),
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const Text('You Choose We Deliver'),
                      const SizedBox(height: 30),
                      roundedInputField(
                        label: 'Username',
                        controller: usernameController,
                        validator: (value) =>
                            value!.isEmpty ? 'Please enter username' : null,
                      ),
                      const SizedBox(height: 20),
                      roundedInputField(
                        label: 'Password',
                        controller: passwordController,
                        obscureText: true,
                        validator: (value) =>
                            value!.isEmpty ? 'Please enter password' : null,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 200,
                        child: roundedButton(
                          text: 'Log in',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Login logic goes here




                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignupScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Don't have an account? Sign up",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientBackground extends StatelessWidget {
  final Widget child;
  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 239, 232, 224),
            Color.fromARGB(255, 247, 89, 142),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(child: SizedBox.expand(child: child)),
    );
  }
}
