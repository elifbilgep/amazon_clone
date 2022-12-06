import 'package:amazon_clone/core/constants/init/theme/light/theme_interface_light.dart';
import 'package:amazon_clone/product/account/view/account_view.dart';
import 'package:amazon_clone/product/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/view_model/home_view_model.dart';
import 'custom_nav_bar.dart';

// ignore: must_be_immutable
class BottomBar extends StatefulWidget with ILightTheme {
  BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    int _currPage = Provider.of<HomeViewModel>(context).pageNoView;

    return Scaffold(body: pages[_currPage], bottomNavigationBar: const CustomNavBar());
  }

  List<Widget> pages = [
    const HomeView(),
    const Center(child: AccountView()),
    const Center(
      child: Text("Cart Page"),
    ),
  ];
}
