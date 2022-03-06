import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {

  final String labelText;
  final String hintText;
  final Icon icon;

  ReusableTextField({required this.labelText,required this.hintText,required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    );
  }
}
