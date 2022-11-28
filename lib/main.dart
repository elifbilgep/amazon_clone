import 'package:amazon_clone/core/constants/init/theme/light/app_theme_light.dart';
import 'package:amazon_clone/core/constants/router/router.dart';
import 'package:amazon_clone/product/auth/sign_in/view/sign_in_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: ((settings) => generateRoute(settings)),
        theme: AppThemeLight.instance.theme,
        title: 'Amazon Clone',
        home: const SignInView());
  }
}
