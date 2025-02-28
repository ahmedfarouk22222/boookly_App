import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.urlImage});
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: CachedNetworkImage(
        imageUrl: urlImage,
        fit: BoxFit.fill,
        placeholder: (context, url) => Center(
          child: Image.asset(
            'assets/images/Animation.gif',
            fit: BoxFit.fill,
            
          ),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.white,),
      ),
    );
  }
}
