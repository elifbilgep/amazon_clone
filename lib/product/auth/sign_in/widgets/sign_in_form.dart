import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/text_constants.dart';
import '../../../components/widgets/custom_button.dart';
import '../../../components/widgets/custom_headline.dart';
import '../../../components/widgets/custom_text_field.dart';
import '../../services/auth_service.dart';

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({super.key});

  @override
  State<SignInFormWidget> createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
  static const double _signInFormW = 400;
  static const double _signInFormH = 300;

  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  final AuthService _authService = AuthService();
  final _signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: context.paddingMediumAll,
        height: _signInFormH,
        width: _signInFormW,
        color: Colors.white,
        child: Form(
          key: _signInFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomHeadline(
                text: TextConstants.signInHeadline,
              ),
              CustomTextField(controller: _emailEditingController, hintText: "Name"),
              CustomTextField(controller: _passwordEditingController, hintText: "Password"),
              CustomButton(
                  text: "SIGN IN",
                  onTap: () {
                    if (_signInFormKey.currentState!.validate()) {
                      signInUser();
                    }
                  })
            ],
          ),
        ));
  }

  void signInUser() {
    _authService.signInUser(
        context: context, email: _emailEditingController.text, password: _passwordEditingController.text);
  }
}
