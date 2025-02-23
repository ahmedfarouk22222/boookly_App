import 'package:bookly_app/Features/Home/presentation/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSeleerListview extends StatelessWidget {
  const BestSeleerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BestSellerItem(),
          );
        },
      ),
    );
  }
}
