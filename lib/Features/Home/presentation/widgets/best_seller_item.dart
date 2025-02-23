import 'package:bookly_app/Features/Home/presentation/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_listview_item.dart.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: CustomListViewItem(),
        ),
        SizedBox(width: 30),
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.15,
              child: Text(
                'HarryPotter and the Goble to Fire',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textstyle22,
              ),
            ),
            Text('J.K. Rowling', style: Styles.textstyle16),
            SizedBox(height: 3),
            Row(
              children: [
                Text(
                  '19.99 €',
                  style:
                      Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                BookRaiting(),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}

