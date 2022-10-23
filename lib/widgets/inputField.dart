import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String labelText;
  final Widget icon;
  final bool obscureText;
  final keyboardType;

  const InputField({
    required this.labelText,
    required this.icon,
    required this.obscureText,
    this.keyboardType,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        icon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
