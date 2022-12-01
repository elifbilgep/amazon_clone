import 'package:amazon_clone/core/constants/app/app_router_constants.dart';
import 'package:amazon_clone/core/constants/app/text_constants.dart';
import 'package:amazon_clone/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_question.dart';
import '../widgets/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingMediumAll,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const FormWidget(),
              const Spacer(),
              CustomQuestionTextWidget(
                firstText: TextConstants.alreadyHaveAcc,
                secondText: TextConstants.signIn,
                onTap: () => Navigator.pushNamed(context, RouterConstants.SIGN_IN_VIEW),
              )
            ],
          ),
        ),
      ),
    );
  }
}
