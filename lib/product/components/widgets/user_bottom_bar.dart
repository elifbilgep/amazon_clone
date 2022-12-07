import 'package:amazon_clone/core/constants/init/theme/light/theme_interface_light.dart';
import 'package:amazon_clone/product/account/view/account_view.dart';
import 'package:amazon_clone/product/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/view_model/home_view_model.dart';
import 'custom_nav_bar.dart';

// ignore: must_be_immutable
class UserBottomBar extends StatefulWidget with ILightTheme {
  UserBottomBar({super.key});

  @override
  State<UserBottomBar> createState() => _UserBottomBarState();
}

class _UserBottomBarState extends State<UserBottomBar> {
  @override
  Widget build(BuildContext context) {
    int _currPage = Provider.of<HomeViewModel>(context).pageNoView;

    return Scaffold(body: pages[_currPage], bottomNavigationBar: const CustomUserNavBar());
  }

  List<Widget> pages = [
    const HomeView(),
    const Center(child: AccountView()),
    const Center(
      child: Text("Cart Page"),
    ),
  ];
}
