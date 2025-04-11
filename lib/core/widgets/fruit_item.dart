import 'package:ecommerce_app/core/utils/app_color.dart';
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
              SvgPicture.asset(
                  "assets/images/6-65920_tropical-watermelon-png-clipart-watermelon-png-removebg-preview 1 (1).svg"),
              ListTile(
                title: Text("بطيخ",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    )),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "30 جنيه",
                          style: TextStyles.Bold13.copyWith(
                              color: AppColors.SecondaryColor)),
                      TextSpan(
                          text: '/',
                          style: TextStyles.Bold13.copyWith(
                              color: AppColors.LightPrimaryColor)),
                      TextSpan(
                          text: ' ',
                          style: TextStyles.Bold13.copyWith(
                              color: Color(0xFFF8C76D))),
                      TextSpan(
                          text: 'الكيلو',
                          style: TextStyles.Bold13.copyWith(
                              color: AppColors.LightPrimaryColor)),
                    ],
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ),

            ],
          ))
        ],
      ),
    );
  }
}
