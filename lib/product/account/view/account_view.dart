import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/product/account/view/widgets/account_app_bar.dart';
import 'package:amazon_clone/product/account/view/widgets/below_app_bar.dart';
import 'package:amazon_clone/product/account/view/widgets/orders.dart';
import 'package:amazon_clone/product/account/view/widgets/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBarWidget(),
      ),
      body: Column(
        children: [
          const BelowAppBar(),
          context.sizedBoxLowVertical,
          const TopButtons(),
          context.sizedBoxMediumVertical,
          const Orders()
        ],
      ),
    );
  }
}
