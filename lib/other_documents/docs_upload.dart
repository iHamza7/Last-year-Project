import 'package:flutter/material.dart';

class PaperDocs extends StatelessWidget {
  const PaperDocs({Key? key}) : super(key: key);
  static String routeName = "/Paperdocuments";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("other documents"),
    ));
  }
}
