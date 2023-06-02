import 'package:flutter/material.dart';

class CnicFind extends StatelessWidget {
  const CnicFind({Key? key}) : super(key: key);
  static String routeName = "/CnicFind";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is cnic find"),
      ),
    );
  }
}
