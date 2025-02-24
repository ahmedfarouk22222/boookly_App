import 'custom_book_image.dart';
import 'package:flutter/material.dart';

class Featurelistviewitem extends StatelessWidget {
  const Featurelistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomBookImage();
      },
    );
  }
}
