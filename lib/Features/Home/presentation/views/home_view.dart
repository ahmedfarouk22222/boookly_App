import 'package:bookly_app/Features/Home/presentation/widgets/home_view_body.dart';

import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  HomeViewBody(),
    );
  }
}


