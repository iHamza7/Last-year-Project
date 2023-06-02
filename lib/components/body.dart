// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fypproject/components/splash_contents.dart';

import '../buttoncomp.dart/defaultbutton.dart';
import '../owner/own_docs.dart';
import '../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentpage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to DOCS finder",
      "image": "assets/images/pro.jpg",
    },
    {
      "text": "To find the lost CNIC is now easy",
      "image": "assets/images/pro1.jpg",
    },
    {
      "text": "This will also help in Passport",
      "image": "assets/images/pro3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
          flex: 2,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentpage = value;
              });
            },
            itemCount: splashData.length,
            itemBuilder: (context, index) => SplashContent(
              image: splashData[index]["image"],
              text: splashData[index]["text"],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                DefaultButton(
                  press: () {
                    Navigator.pushNamed(context, OwnDocs.routeName);
                  },
                  text: "Continue",
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Container buildDot({int? index}) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentpage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
