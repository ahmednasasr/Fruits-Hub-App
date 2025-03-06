import 'package:ecommerce_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context,String title) {
  return AppBar(
    leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(
            Icons.arrow_back_ios_new
        )),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.Bold13,
    ),
  );
}
