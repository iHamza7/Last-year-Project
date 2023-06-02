import 'package:flutter/material.dart';

import '../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Spacer(),
        Text(
          "DOCS FINDER",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            fontWeight: FontWeight.bold,
            color: const Color(0XFFFF7643),
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(340),
          width: getProportionateScreenWidth(390),
        ),
      ],
    );
  }
}
