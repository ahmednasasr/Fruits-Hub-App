import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    bool isOnboardingViewSeen = Prefs.getBool("isOnboardingViewSeen") ?? false;
    Future.delayed(Duration(seconds: 5), () {
      if (isOnboardingViewSeen) {
        User? user = FirebaseAuth.instance.currentUser;

        if (user != null) {
          Navigator.pushReplacementNamed(context, HomeView.routename);
        } else {
          Navigator.pushReplacementNamed(context, LoginView.routename);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routename);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset("assets/images/plant.svg"),
          ],
        ),
        SvgPicture.asset("assets/images/logo.svg"),
        SvgPicture.asset(
          "assets/images/Circles.svg",
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
