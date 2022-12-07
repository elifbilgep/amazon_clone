import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/admin_view_model.dart';

class AdminNavBar extends StatelessWidget {
  const AdminNavBar({
    Key? key,
  }) : super(key: key);

  static const double _bottomNavBarW = 42;
  static const double _bottomBarBorderW = 5;

  @override
  Widget build(BuildContext context) {
    int _currPage = Provider.of<AdminViewModel>(context).pageNo;
    return BottomNavigationBar(
      iconSize: 28,
      currentIndex: _currPage,
      selectedItemColor: context.theme.colorScheme.onPrimary,
      unselectedItemColor: context.theme.colorScheme.onSecondary,
      backgroundColor: context.theme.colorScheme.background,
      onTap: (value) {
        Provider.of<AdminViewModel>(context, listen: false).updatePageNo(value);
      },
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            width: _bottomNavBarW,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: _currPage == 0 ? context.theme.colorScheme.onPrimary : context.theme.colorScheme.background,
                    width: _bottomBarBorderW),
              ),
            ),
            child: const Icon(Icons.home_outlined),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            width: _bottomNavBarW,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: _currPage == 1 ? context.theme.colorScheme.onPrimary : context.theme.colorScheme.background,
                    width: _bottomBarBorderW),
              ),
            ),
            child: const Icon(Icons.analytics_outlined),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Container(
            width: _bottomNavBarW,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: _currPage == 2 ? context.theme.colorScheme.onPrimary : context.theme.colorScheme.background,
                    width: _bottomBarBorderW),
              ),
            ),
            child: const Icon(Icons.all_inbox_outlined),
          ),
        )
      ],
    );
  }
}
