import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/view_model/home_view_model.dart';

class CustomUserNavBar extends StatefulWidget {
  const CustomUserNavBar({
    Key? key,
  }) : super(key: key);

  static const double _bottomNavBarW = 42;
  static const double _bottomBarBorderW = 5;

  @override
  State<CustomUserNavBar> createState() => _CustomUserNavBarState();
}

class _CustomUserNavBarState extends State<CustomUserNavBar> {
  @override
  Widget build(BuildContext context) {
    int _currPage = Provider.of<HomeViewModel>(context).pageNoView;
    var theme;
    return BottomNavigationBar(
      iconSize: 28,
      currentIndex: _currPage,
      selectedItemColor: context.theme.colorScheme.onPrimary,
      unselectedItemColor: context.theme.colorScheme.onSecondary,
      backgroundColor: context.theme.colorScheme.background,
      onTap: (value) {
        Provider.of<HomeViewModel>(context, listen: false).updatePage(value);
      },
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            width: CustomUserNavBar._bottomNavBarW,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: _currPage == 0 ? context.theme.colorScheme.onPrimary : context.theme.colorScheme.background,
                    width: CustomUserNavBar._bottomBarBorderW),
              ),
            ),
            child: const Icon(Icons.home_outlined),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            width: CustomUserNavBar._bottomNavBarW,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: _currPage == 1 ? context.theme.colorScheme.onPrimary : context.theme.colorScheme.background,
                    width: CustomUserNavBar._bottomBarBorderW),
              ),
            ),
            child: const Icon(Icons.person_outline_outlined),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            width: CustomUserNavBar._bottomNavBarW,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: _currPage == 2 ? context.theme.colorScheme.onPrimary : context.theme.colorScheme.background,
                    width: CustomUserNavBar._bottomBarBorderW),
              ),
            ),
            child: Badge(
                elevation: 0,
                badgeColor: Colors.white,
                badgeContent: const Text("2"),
                child: const Icon(Icons.shopping_cart_outlined)),
          ),
        )
      ],
    );
  }
}
