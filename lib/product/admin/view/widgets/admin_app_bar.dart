import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app/global_variables.dart';
import '../../../../core/constants/image/image_constants.dart';

class AdminAppBar extends StatelessWidget {
  final String text;
  final bool isLogoSeen;
  const AdminAppBar({super.key, required this.text, required this.isLogoSeen});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(gradient: GlobalVariables.accountAppBarGradient),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Image.asset(
              ImageConstants.instance.toPng("amazon_in"),
              width: 120,
              height: 45,
              color: Colors.black,
            ),
          ),
          Text(
            text,
            style: context.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
