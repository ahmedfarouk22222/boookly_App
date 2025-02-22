import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 18),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 100),
          Spacer(),
          Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          )
        ],
      ),
    );
  }
}
