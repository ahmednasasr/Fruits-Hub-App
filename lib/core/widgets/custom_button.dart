import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.red,
              ),
            ),
          ),
          Positioned.fill(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  SvgPicture.asset(
                      "assets/images/6-65920_tropical-watermelon-png-clipart-watermelon-png-removebg-preview 1 (1).svg"),
                  ListTile(
                    title: const Text(
                      'بطيخ',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                    subtitle: const Text(
                      '2.5 كجم',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                    trailing: const Text(
                      "بطيخ",
                      style: TextStyles.Bold13
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
