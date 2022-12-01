import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomHeadline extends StatelessWidget {
  final String text;
  const CustomHeadline({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline4,
    );
  }
}
