import "package:flutter/material.dart";

class MyPassPort extends StatelessWidget {
  const MyPassPort({Key? key}) : super(key: key);
  static String routeName = "/Passport";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PassPort"),
        centerTitle: true,
      ),
    );
  }
}
