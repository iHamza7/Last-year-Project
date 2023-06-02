import 'package:flutter/material.dart';

class PassFind extends StatefulWidget {
  const PassFind({super.key});
  static String routeName = "/PassFind";

  @override
  State<PassFind> createState() => _PassFindState();
}

class _PassFindState extends State<PassFind> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is pass find"),
      ),
    );
  }
}
