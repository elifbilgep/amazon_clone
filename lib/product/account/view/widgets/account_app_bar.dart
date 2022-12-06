import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/global_variables.dart';
import '../../../../core/constants/image/image_constants.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    Key? key,
  }) : super(key: key);

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
          Container(
            padding: context.paddingLowAll,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: context.lowValue),
                  child: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: context.lowValue),
                  child: const Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
