import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  const CustomCheckBox({super.key, required this.isChecked, required this.onChecked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(milliseconds: 300),
        decoration: ShapeDecoration(
            color: isChecked ? AppColors.primaryColor : Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.50,
                    color: isChecked ? Colors.transparent : Color(0xFFDCDEDE)),
                borderRadius: BorderRadius.circular(8))),
        child: isChecked
            ? Padding(
                padding: EdgeInsets.all(3.0),
                child: SvgPicture.asset("assets/images/Vector.svg"))
            : SizedBox(),
      ),
    );
  }
}
