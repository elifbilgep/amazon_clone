import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AccountOptionsButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AccountOptionsButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: context.paddingLowAll,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade400)),
        child: OutlinedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black12.withOpacity(0.03),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: context.textTheme.button,
          ),
        ));
  }
}
