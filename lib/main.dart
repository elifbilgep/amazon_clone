import 'package:amazon_clone/core/constants/init/theme/light/app_theme_light.dart';
import 'package:amazon_clone/core/constants/router/router.dart';
import 'package:amazon_clone/core/providers/user_provider.dart';
import 'package:amazon_clone/product/auth/services/auth_service.dart';
import 'package:amazon_clone/product/auth/sign_up/view/sign_up_view.dart';
import 'package:amazon_clone/product/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MaterialApp(
          onGenerateRoute: ((settings) => generateRoute(settings)),
          theme: AppThemeLight.instance.theme,
          title: 'Amazon Clone',
          home: Provider.of<UserProvider>(context).user.token.isNotEmpty ? const HomeView() : const SignUpView());
    });
  }
}
