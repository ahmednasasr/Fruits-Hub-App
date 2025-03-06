import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:ecommerce_app/features/auth/presentation/views/signup_view.dart';
import 'package:ecommerce_app/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onchanged});
  final ValueChanged<bool> onchanged;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            setState(() {
              isTermsAccepted = value;
            });
            widget.onchanged(value); // ✅ تحديث القيمة في SignupViewBody
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: "من خلال إنشاء حساب ، فإنك توافق على",
                  style:
                      TextStyles.SemiBold13.copyWith(color: Color(0xFF616A6B))),
              TextSpan(
                  text: " الشروط والأحكام",
                  style: TextStyles.SemiBold13.copyWith(
                      color: AppColors.LightPrimaryColor)),
              TextSpan(
                  text: " ",
                  style: TextStyles.SemiBold13.copyWith(
                      color: AppColors.primaryColor)),
              TextSpan(
                  text: "الخاصة",
                  style: TextStyles.SemiBold13.copyWith(
                      color: AppColors.LightPrimaryColor)),
              TextSpan(
                  text: " ",
                  style: TextStyles.SemiBold13.copyWith(
                      color: AppColors.LightPrimaryColor)),
              TextSpan(
                  text: "بنا",
                  style: TextStyles.SemiBold13.copyWith(
                      color: AppColors.LightPrimaryColor))
            ]),
          ),
        )
      ],
    );
  }
}
