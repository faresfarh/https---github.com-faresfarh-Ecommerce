import 'package:flutter/material.dart';

class ListImage extends StatelessWidget {
  const ListImage({super.key, required this.images});
  final String images;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 330,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images)),
        borderRadius: BorderRadius.circular(40)
      ),
    );
  }
}
