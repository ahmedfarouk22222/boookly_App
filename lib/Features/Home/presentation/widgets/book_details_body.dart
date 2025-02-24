import 'package:bookly_app/Features/Home/presentation/widgets/book_details_section.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBookDetailsAppbar(),
                SizedBox(height: 20),
                BookDetailsSection(),
                SimilarBookSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
