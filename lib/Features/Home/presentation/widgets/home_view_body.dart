import 'package:bookly_app/Features/Home/presentation/widgets/feature_listview.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomAppbar(),
      SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Featurelistviewitem()),
    ]);
  }
}
