import 'package:amazon_clone/core/constants/image/image_constants.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/global_variables.dart';

class TopCategories extends StatefulWidget {
  const TopCategories({super.key});

  @override
  State<TopCategories> createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.width,
        height: 50,
        decoration: const BoxDecoration(gradient: GlobalVariables.accountAppBarGradient),
        padding: context.paddingLowAll,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ...ImageConstants.topCategories.map((e) => Text(
                e['title']!,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )),
        ]));
  }
}
