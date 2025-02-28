import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start,required this.pagecount,
      required this.rating});
  final MainAxisAlignment mainAxisAlignment;
  
  final String rating;
  final String pagecount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6.3),
        Text(rating, style: Styles.textstyle16),
        SizedBox(width: 5),
        Text(
          pagecount.toString(),
          style: Styles.textstyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
