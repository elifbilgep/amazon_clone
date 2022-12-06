import 'package:amazon_clone/core/constants/image/image_constants.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/core/providers/user_provider.dart';
import 'package:amazon_clone/product/home/view/widgets/address_box.dart';
import 'package:amazon_clone/product/home/view/widgets/carousel_image.dart';
import 'package:amazon_clone/product/home/view/widgets/deal_of_day.dart';
import 'package:amazon_clone/product/home/view/widgets/home_app_bar.dart';
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
            children: [
              AddressBox(),
              Container(
                child: Image.asset(
                  ImageConstants.instance.toPng("fallof"),
                  width: context.width,
                  fit: BoxFit.cover,
                ),
              ),
              CarouselImage(),
              DealOfDay()
            ],
          ),
        ));
  }
}
