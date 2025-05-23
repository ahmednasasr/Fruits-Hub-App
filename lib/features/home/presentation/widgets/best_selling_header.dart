import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:ecommerce_app/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BestSellingView.routename);
      },
      child: Row(
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
      ),
    );
  }
}
