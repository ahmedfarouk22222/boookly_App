import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeError extends StatelessWidget {
  const CustomeError({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Styles.textstyle20,
    );
  }
}
