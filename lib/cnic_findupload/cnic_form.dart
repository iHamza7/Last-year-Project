import 'package:flutter/material.dart';

import '../size_config.dart';
import 'cnic_helper.dart';
import 'cnicmodel.dart';
// import 'data_class.dart';
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
    // final args = ModalRoute.of(context)!.settings.arguments as ShowData;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Fill the Form'),
        centerTitle: true,
      ),
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
              finderEmail,
            ),
            TextInputField(
              "Address",
              finderAddress,
            ),
            TextInputField(
              "Phone",
              finderPhone,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFFF7643),
                    ),
                    onPressed: () {
                      FirestoreHelper.addData(UserModel(
                        // ownerName: args.ownerName.text,
                        // ownerNumber: args.ownerNumber.text,
                        // ownerExpire: args.ownerExpire.text,
                        finderName: finderName.text,
                        finderEmail: finderEmail.text,
                        finderAddress: finderAddress.text,
                        finderPhone: finderPhone.text,
                      ));
                      //   debugPrint(args.ownerName.text);
                      //   debugPrint(args.ownerNumber.text);
                      //   debugPrint(args.ownerExpire.text);
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
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
