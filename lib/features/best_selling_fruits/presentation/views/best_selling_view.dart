import 'package:ecommerce_app/core/widgets/build_app_bar.dart';
import 'package:ecommerce_app/features/best_selling_fruits/presentation/widgets/best_selling_view_body.dart';
import 'package:flutter/material.dart';

class BestSellingView extends StatelessWidget {
  static const routename = "best_selling_view";
  const BestSellingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarr(context),
      body: BestSellingViewBody(),
    );
  }


}
