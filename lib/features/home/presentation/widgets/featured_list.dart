import 'package:ecommerce_app/features/home/presentation/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FeaturedItem(),
            );
          },
        ),
      ),
    );
  }
}
