import 'package:ecommerce_app/core/helper_functions/getUser.dart';
import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: const EdgeInsets.all(12),
        decoration: const ShapeDecoration(
          color: Color(0xFFEEF8ED),
          shape: OvalBorder(),
        ), // ShapeDecoration
        child: SvgPicture.asset("assets/images/notification.svg "),
      ),
      leading: Image.asset("assets/images/Ellipse 11.png"),
      title: Text("صباح الخير !..",
          textAlign: TextAlign.right,
          style: TextStyles.regular16.copyWith(
            color: Color(0xFF949D9E),
          )),
      subtitle: Text(
          getUser().name,
          textAlign: TextAlign.right,
          style: TextStyles.Bold16.copyWith(
            color: Color(0xFFC08D0D),
          ) // TextStyle
          ),
    );
  }
}
