import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentpage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentpage = pageController.page!.round();
      setState(() {
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color:  currentpage == 1 ?AppColors.primaryColor:AppColors.primaryColor.withOpacity(0.5)),
        ),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentpage == 1 ? true : false,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(onpressed: () {
                Prefs.setBool("isOnboardingViewSeen", true);
                Navigator.of(context).pushReplacementNamed(LoginView.routename);
              }, text: "ابدأ الان")),
        )
      ],
    );
  }
}
