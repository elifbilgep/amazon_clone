import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  static const double _dealOfDayImageHeight = 235;
  static const _dealOfTheDayText = "Deal Of The Day";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: context.paddingMediumAll,
          child: Text(
            _dealOfTheDayText,
            style: context.textTheme.bodyText1,
          ),
        ),
        Image.network(
          "https://images.unsplash.com/photo-1587033411391-5d9e51cce126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
          height: _dealOfDayImageHeight,
          fit: BoxFit.cover,
          width: context.width - context.mediumValue,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: context.mediumValue,
            top: context.mediumValue,
          ),
          child: Text("\$999"),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: context.mediumValue,
          ),
          child: const Text(
            "Ipad",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
