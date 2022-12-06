import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class OrdersHeadline extends StatelessWidget {
  const OrdersHeadline({super.key});
  static const String _yourOrders = "Your Orders";
  static const String _seeDetail = "See All";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingMediumHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _yourOrders,
            style: context.textTheme.bodyText1,
          ),
          Text(
            _seeDetail,
            style: context.textTheme.bodyText2!.copyWith(color: context.colors.onPrimary, fontSize: 16),
          )
        ],
      ),
    );
  }
}
