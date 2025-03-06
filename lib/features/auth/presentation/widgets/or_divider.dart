import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class OnDivider extends StatelessWidget {
  const OnDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          "أو",
          style: TextStyles.SemiBold13,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),

      ],
    );
  }
}
