import 'package:ecommerce_app/core/widgets/search_text_field.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/custom_home_appbar.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/featured_item.dart';
import 'package:ecommerce_app/features/home/presentation/widgets/featured_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  static const routename = "home_view_body";
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                CustomHomeAppbar(),
                SizedBox(
                  height: 16,
                ),
                SearchTextField(),
                SizedBox(height: 12,),

                FeaturedList(),
                SizedBox(height: 12,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
