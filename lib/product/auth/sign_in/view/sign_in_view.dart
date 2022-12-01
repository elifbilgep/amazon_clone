import 'package:amazon_clone/core/constants/app/app_router_constants.dart';
import 'package:amazon_clone/core/constants/app/text_constants.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import '../../sign_up/widgets/custom_question.dart';
import '../widgets/sign_in_form.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingMediumAll,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const SignInFormWidget(),
              const Spacer(),
              CustomQuestionTextWidget(
                firstText: TextConstants.dontHaveAcc,
                secondText: TextConstants.signUp,
                onTap: () => Navigator.pushNamed(context, RouterConstants.SIGN_UP_VIEW),
              )
            ],
          ),
        ),
      ),
    );
  }
}
