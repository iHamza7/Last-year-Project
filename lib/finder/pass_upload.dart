import 'package:flutter/material.dart';

class PassUpload extends StatefulWidget {
  const PassUpload({super.key});
  static String routeName = "/PassUpload";

  @override
  State<PassUpload> createState() => _PassUploadState();
}

class _PassUploadState extends State<PassUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is pass upload"),
      ),
    );
  }
}
