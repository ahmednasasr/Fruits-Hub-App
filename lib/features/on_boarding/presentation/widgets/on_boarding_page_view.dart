import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: "assets/images/page_item1_image.svg",
          backgroundImage: "assets/images/page_item1_background.svg",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في", style: TextStyles.Bold23),
              Text("HUB",
                  style: TextStyles.Bold23.copyWith(
                      color: AppColors.SecondaryColor)),
              Text("Fruit",
                  style: TextStyles.Bold23.copyWith(
                      color: AppColors.primaryColor)),
            ],
          ),
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          isvisable: true,
        ),
        PageViewItem(
          image: "assets/images/page_item2_image.svg",
          backgroundImage: "assets/images/page_item2_background.svg",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ابحث وتسوق",style: TextStyles.Bold23.copyWith(
                  color: Colors.black)),
            ],
          ),
          subtitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          isvisable: false,
        ),
      ],
    );
  }
}
