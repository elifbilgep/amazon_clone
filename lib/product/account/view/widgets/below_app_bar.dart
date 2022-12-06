import 'package:amazon_clone/core/constants/app/global_variables.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/core/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BelowAppBar extends StatelessWidget {
  const BelowAppBar({super.key});
  static const String _hello = "Hello, ";

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context, listen: false).user;
    return Container(
      decoration: const BoxDecoration(
        gradient: GlobalVariables.accountAppBarGradient,
      ),
      padding: context.paddingMediumAll,
      child: Row(
        children: [
          RichText(
            text: TextSpan(text: _hello, style: context.textTheme.bodyText1, children: [
              TextSpan(text: user.name, style: context.textTheme.bodyText1),
            ]),
          ),
        ],
      ),
    );
  }
}
