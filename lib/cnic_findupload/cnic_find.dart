import 'package:flutter/material.dart';

class CnicFind extends StatefulWidget {
  const CnicFind({Key? key}) : super(key: key);
  static String routeName = "/CnicFind";

  @override
  State<CnicFind> createState() => _CnicFindState();
}

class _CnicFindState extends State<CnicFind> {
  TextEditingController ownerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is cnic find"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: TextField(
          controller: ownerName,
          decoration: const InputDecoration(
            labelText: "enter name",
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
