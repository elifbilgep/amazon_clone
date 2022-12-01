import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(borderRadius: context.borderlowRadius, color: context.theme.primaryColor),
        child: Center(
            child: Text(
          text,
          style: context.textTheme.button,
        )),
      ),
    );
  }
}
