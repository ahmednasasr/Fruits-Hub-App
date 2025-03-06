import 'package:ecommerce_app/features/home/presentation/widgets/best_selling_header.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 32;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                top: 0,
                right: itemWidth * 0.4,
                child: Image.asset(
                    fit: BoxFit.fill,
                    "assets/images/6-65920_tropical-watermelon-png-clipart-watermelon-png-removebg-preview 1.png"),
              ),
              Container(
                width: itemWidth * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Ellipse 224.png"),
                      fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'عرض العيد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                      Spacer(),
                      const Text(
                        'خصم 25%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      FeaturedItemButton(
                        onpressed: () {},
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      BestSellingHeader()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
