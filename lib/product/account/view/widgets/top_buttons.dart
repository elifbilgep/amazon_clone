import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import 'account_options_button.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  static const _accountOptionsButtons = ["Your orders", "Turn Seller", "Log Out", "Your Wish List"];
  static const double _cardsHeight = 130;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _cardsHeight,
      width: context.width - context.mediumValue,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 60),
          itemBuilder: (context, index) {
            return AccountOptionsButton(
              text: _accountOptionsButtons[index],
              onPressed: () {},
            );
          }),
    );
  }
}
