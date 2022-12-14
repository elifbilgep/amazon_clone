import 'package:amazon_clone/core/providers/user_provider.dart';
import 'package:amazon_clone/product/home/view/widgets/address_box.dart';
import 'package:amazon_clone/product/home/view/widgets/carousel_image.dart';
import 'package:amazon_clone/product/home/view/widgets/deal_of_day.dart';
import 'package:amazon_clone/product/home/view/widgets/home_app_bar.dart';
import 'package:amazon_clone/product/home/view/widgets/sale_off_image.dart';
import 'package:amazon_clone/product/home/view/widgets/top_categories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/models/user.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).user;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HomeAppBarWidget(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              TopCategories(),
              AddressBox(),
              SaleOffImage(),
              CarouselImage(),
              DealOfDay(),
            ],
          ),
        ));
  }
}
