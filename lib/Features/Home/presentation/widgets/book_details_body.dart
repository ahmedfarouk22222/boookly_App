import 'package:bookly_app/Features/Home/presentation/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/button_details_action.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
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
        SizedBox(height: 40),
        Text(
          'The Jungle Book',
          style: Styles.textstyle22.copyWith(fontSize: 30),
        ),
        SizedBox(height: 2),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textstyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 10),
        BookRaiting(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 25),
        BooxAction(),
      ],
    );
  }
}
