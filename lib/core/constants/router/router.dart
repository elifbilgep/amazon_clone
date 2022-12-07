import 'package:amazon_clone/core/constants/app/app_router_constants.dart';
import 'package:amazon_clone/product/admin/view/posts/view/add_post_view.dart';
import 'package:amazon_clone/product/components/widgets/user_bottom_bar.dart';
import 'package:amazon_clone/product/home/view/home.dart';
import 'package:flutter/material.dart';

import '../../../product/auth/sign_in/view/sign_in_view.dart';
import '../../../product/auth/sign_up/view/sign_up_view.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouterConstants.SIGN_IN_VIEW:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignInView(),
      );
    case RouterConstants.SIGN_UP_VIEW:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignUpView(),
      );
    case RouterConstants.HOME_VIEW:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeView(),
      );
    case RouterConstants.BOTTOM_BAR:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => UserBottomBar(),
      );
    case RouterConstants.ADD_POST_VIEW:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddPostsView(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("No page found"),
          ),
        ),
      );
  }
}
