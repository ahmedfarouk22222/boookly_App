import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem(
      {super.key,
      required this.bookModel,
      required this.index,
     });
  final BookModel bookModel;
  final int index;
  
  @override
  Widget build(BuildContext context) {
     final book = bookModel.items?[index].volumeInfo;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: CustomBookImage(
                urlImage:
                    bookModel.items?[index].volumeInfo?.imageLinks?.thumbnail ??
                        ''),
          ),
          SizedBox(width: 30),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.15,
                child: Text(
                  book?.title ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textstyle22,
                ),
              ),
              Text(book?.authors?[0] ?? '',
                  style: Styles.textstyle16),
              SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    'Free',
                    style: Styles.textstyle16
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  BookRaiting(
                    rating: book?.maturityRating??'n/a',
                    pagecount:book?.pageCount?.toString()??'0',
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
