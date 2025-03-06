import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.title,
      required this.subtitle,
      required this.isvisable});
  final String image, backgroundImage;
  final Widget title;
  final String subtitle;
  final bool isvisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                image,
                ),
              ),
              Visibility(
                visible: isvisable,
                child: GestureDetector(
                  onTap: (){
                    Prefs.setBool("isOnboardingViewSeen", true);
                    Navigator.of(context).pushReplacementNamed(LoginView.routename);
                  },
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "تخط",
                        style: TextStyles.Regular13.copyWith(
                            color: Color(0xFF949D9E)),
                      )),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 64,
        ),
        title,
        SizedBox(
          height: 24,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 37),
            child: Text(subtitle,
                textAlign: TextAlign.center,
                style:
                    TextStyles.SemiBold13.copyWith(color: Color(0xFF4E5456))))
      ],
    );
  }
}
