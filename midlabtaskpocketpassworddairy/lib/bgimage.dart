import 'package:flutter/material.dart';

class bgImage extends StatelessWidget {
  const bgImage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "asset/bg.jpg",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.5),
      colorBlendMode: BlendMode.darken,
    );
  }
}