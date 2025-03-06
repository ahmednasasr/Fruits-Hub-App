import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'أكثر مبيعاً',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          'المزيد',
          textAlign: TextAlign.center,
          style: TextStyles.Regular13.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
