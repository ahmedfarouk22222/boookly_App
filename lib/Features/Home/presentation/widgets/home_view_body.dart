import 'package:bookly_app/Features/Home/presentation/widgets/best_seller_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custome_appbar.dart';
import 'feature_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomAppbar(),
        SizedBox(
          height: 0,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Featurelistviewitem()),
        SizedBox(
          height: 30,
        ),
        Text(
          'Best Sellers',
          style: Styles.textstyle18,
        ),
        SizedBox(
          height: 30,
        ),
        BestSellerItem(),
      ]),
    );
  }
}
