import 'package:flutter/material.dart';

import '../size_config.dart';
import 'text_field.dart';

class CnicForm extends StatefulWidget {
  const CnicForm({super.key});
  static String routeName = "/CnicForm";
  @override
  State<CnicForm> createState() => _CnicFormState();
}

class _CnicFormState extends State<CnicForm> {
  TextEditingController finderName = TextEditingController();
  TextEditingController finderEmail = TextEditingController();
  TextEditingController finderAddress = TextEditingController();
  TextEditingController finderPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              "Kindly submit your information so the owner can contact with you !",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextInputField(
              "Name",
              finderName,
            ),
            TextInputField(
              "Email",
              finderName,
            ),
            TextInputField(
              "Address",
              finderName,
            ),
            TextInputField(
              "Phone",
              finderName,
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void dispose() {
    finderName.dispose();
    finderEmail.dispose();
    finderAddress.dispose();
    finderPhone.dispose();
    super.dispose();
  }
}
