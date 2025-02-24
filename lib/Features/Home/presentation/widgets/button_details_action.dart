
import 'package:bookly_app/core/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class BooxAction extends StatelessWidget {
  const BooxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomeButton(
              text: '19.99€',
              backgroundColor: Colors.white,
              textColor: Color(0XFF000000),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: CustomeButton(
              text: 'Free preview',
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              // Color(0XFFFFFFFF),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}