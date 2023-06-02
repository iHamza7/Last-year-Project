import 'package:flutter/material.dart';

import '../cnic_findupload/cnic_upload.dart';
import '../finder/pass_upload.dart';
import '../other_documents/docs_upload.dart';
import 'class_cards.dart';

class MyDocs2 extends StatefulWidget {
  const MyDocs2({super.key});
  static String routeName = "/Docs2";

  @override
  State<MyDocs2> createState() => _MyDocs2State();
}

class _MyDocs2State extends State<MyDocs2> {
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
              Navigator.pushNamed(context, CnicUpload.routeName);
            },
            title: "National Identity Card",
            subtitle: "",
            color: Colors.green,
          ),
          ClassCards(
            pressMe: () {
              Navigator.pushNamed(context, PassUpload.routeName);
            },
            title: "Passport",
            subtitle: "",
            color: Colors.blue,
          ),
          ClassCards(
              pressMe: () {
                Navigator.pushNamed(context, PaperDocs.routeName);
              },
              title: "Other Documents ",
              subtitle: "must contain  Email address",
              color: Colors.blueGrey),
        ],
      ),
    );
  }
}
