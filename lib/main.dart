import 'package:amazon_clone/core/constants/init/theme/light/app_theme_light.dart';
import 'package:amazon_clone/core/constants/router/router.dart';
import 'package:amazon_clone/core/providers/user_provider.dart';
import 'package:amazon_clone/product/admin/view/admin/admin_view.dart';
import 'package:amazon_clone/product/admin/view/posts/view_model/add_post_view_model.dart';
import 'package:amazon_clone/product/admin/view_model/admin_view_model.dart';
import 'package:amazon_clone/product/auth/services/auth_service.dart';
import 'package:amazon_clone/product/auth/sign_up/view/sign_up_view.dart';
import 'package:amazon_clone/product/components/widgets/user_bottom_bar.dart';
import 'package:amazon_clone/product/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => AddPostViewModel(),
    ),
    ChangeNotifierProvider(
      create: (context) => AdminViewModel(),
    ),
    ChangeNotifierProvider(create: (context) => HomeViewModel())
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
          debugShowCheckedModeBanner: false,
          onGenerateRoute: ((settings) => generateRoute(settings)),
          theme: AppThemeLight.instance.theme,
          title: 'Amazon Clone',
          home: Provider.of<UserProvider>(context).user.token.isNotEmpty
              ? Provider.of<UserProvider>(context).user.type == 'admin'
                  ? AdminView()
                  : UserBottomBar()
              : const SignUpView());
    });
  }
}
