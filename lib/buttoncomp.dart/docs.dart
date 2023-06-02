import 'package:flutter/material.dart';

import '../cnic_findupload/cnic_find.dart';
import '../finder/pass_find.dart';
import 'class_cards.dart';

class MyDocs extends StatefulWidget {
  const MyDocs({Key? key}) : super(key: key);
  static String routeName = "/Docs";

  @override
  State<MyDocs> createState() => _MyDocsState();
}

class _MyDocsState extends State<MyDocs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DOCS FINDER",
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ClassCards(
            pressMe: () {
              Navigator.pushNamed(context, CnicFind.routeName);
            },
            title: "National Identity Card",
            subtitle: "",
            color: Colors.green,
          ),
          ClassCards(
            pressMe: () {
              Navigator.pushNamed(context, PassFind.routeName);
            },
            title: "Passport",
            subtitle: "",
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
