import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String? labelText;
  final TextEditingController controller;
  const TextInputField(this.labelText, this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
