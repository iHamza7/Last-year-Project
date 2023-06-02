// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0XFFFF7643),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}
