import 'package:flutter/material.dart';

class BestSeleerCard extends StatelessWidget {
  const BestSeleerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage('assets/images/book.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}