import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:ecommerce_app/features/auth/presentation/views/signup_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: "لا تمتلك حساب؟",
            style: TextStyles.SemiBold13.copyWith(
                color: Color(0xFF616A6B))),
        TextSpan(
            text: " ",
            style: TextStyles.SemiBold13.copyWith(
                color: AppColors.primaryColor)),
        TextSpan(
          recognizer: TapGestureRecognizer()..onTap=(){
            Navigator.pushNamed(context, SignupView.routename);
          },
            text: "قم بأنشاء حساب",
            style: TextStyles.SemiBold13.copyWith(
                color: AppColors.primaryColor)
        )
      ]),
    );
  }
}
