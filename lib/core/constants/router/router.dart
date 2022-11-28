import 'package:amazon_clone/core/constants/app/app_router_constants.dart';
import 'package:flutter/material.dart';

import '../../../product/auth/sign_in/view/sign_in_view.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouterConstants.SIGN_IN_VIEW:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignInView(),
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
