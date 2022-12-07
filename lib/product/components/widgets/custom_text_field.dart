import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  const CustomTextField({super.key, required this.controller, required this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey.shade600,
      controller: controller,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter Your $hintText';
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.grey.shade100,
          filled: true,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
