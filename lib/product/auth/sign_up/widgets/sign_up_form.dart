import 'dart:developer';

import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:amazon_clone/product/auth/services/auth_service.dart';
import 'package:amazon_clone/product/components/widgets/custom_headline.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app/text_constants.dart';
import '../../../components/widgets/custom_button.dart';
import '../../../components/widgets/custom_text_field.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  static const double _signInFormHW = 400;

  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  final AuthService _authService = AuthService();
  final _signUpFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _nameEditingController.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingMediumAll,
      height: _signInFormHW,
      width: _signInFormHW,
      color: Colors.white,
      child: Form(
        key: _signUpFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustomHeadline(
              text: TextConstants.signUpHeadline,
            ),
            CustomTextField(controller: _nameEditingController, hintText: "Name", obscureText: false),
            CustomTextField(controller: _emailEditingController, hintText: "Email", obscureText: false),
            CustomTextField(controller: _passwordEditingController, hintText: "Password", obscureText: true),
            CustomButton(
                text: "SIGN UP",
                onTap: () {
                  if (_signUpFormKey.currentState!.validate()) {
                    signUpUser();
                  }
                })
          ],
        ),
      ),
    );
  }

  void signUpUser() {
    _authService.signUpUser(
        context: context,
        email: _emailEditingController.text,
        password: _passwordEditingController.text,
        name: _nameEditingController.text);
  }
}
