
import 'package:bookly_app/Features/Home/presentation/widgets/custom_listview_item.dart.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: CustomListViewItem()),
        SizedBox(width: 30),
        Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.15,
            child: Text(
              'Harry Potterand the Goblet of Fire',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textstyle20,
            ),
          ),
        ]),
      ],
    );
  }
}