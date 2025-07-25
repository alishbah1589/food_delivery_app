import 'package:flutter/material.dart';

Widget roundedInputField({
  required String label,
  required TextEditingController controller,
  bool obscureText = false,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    validator: validator,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(fontWeight: FontWeight.w500),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      filled: true,
      fillColor: Colors.white.withOpacity(0.9),
    ),
  );
}

Widget roundedButton({
  required String text,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor:Color.fromARGB(255, 231, 34, 169),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      minimumSize: const Size.fromHeight(50),
    ),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold), 
    ),
  );
}
