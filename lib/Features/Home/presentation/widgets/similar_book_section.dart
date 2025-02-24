import 'package:bookly_app/Features/Home/presentation/widgets/similar_books_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 60),
        Text('You might also like', style: Styles.textstyle18),
        SizedBox(height: 40),
        SimilarBooksListview(),
      ],
    );
  }
}
