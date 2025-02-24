import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CustomBookDetailsAppbar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .30),
          child: CustomBookImage(),
        ),
      ],
    );
  }
}
