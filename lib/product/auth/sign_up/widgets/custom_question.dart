import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/text_constants.dart';

class CustomQuestionTextWidget extends StatelessWidget {
  final String secondText;
  final String firstText;
  final VoidCallback onTap;

  const CustomQuestionTextWidget({super.key, required this.secondText, required this.firstText, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLowAll,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstText,
              style: context.textTheme.bodyText1,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              secondText,
              style: context.textTheme.bodyText1!.copyWith(
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
