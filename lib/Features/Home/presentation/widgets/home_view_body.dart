import 'package:bookly_app/Features/Home/presentation/widgets/custome_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/feature_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
          spacing: 50,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Featurelistviewitem()),
            Text(
              'Best Sellers',
              style: Styles.titleMedium,
            ),
          ]),
    );
  }
}
