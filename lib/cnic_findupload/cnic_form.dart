import 'package:flutter/material.dart';

import '../size_config.dart';
import 'cnic_helper.dart';
import 'cnicmodel.dart';
// import 'data_class.dart';
import 'text_field.dart';

class CnicForm extends StatefulWidget {
  final UserModel userModel;
  const CnicForm({required this.userModel, super.key});
  static String routeName = "/CnicForm";
  @override
  State<CnicForm> createState() => _CnicFormState();
}

class _CnicFormState extends State<CnicForm> {
  TextEditingController finderName = TextEditingController();
  TextEditingController finderEmail = TextEditingController();
  TextEditingController finderAddress = TextEditingController();
  TextEditingController finderPhone = TextEditingController();
  TextEditingController? ownerName;
  TextEditingController? ownerNumber;
  TextEditingController? ownerExpire;

  @override
  void initState() {
    super.initState();
    ownerName = TextEditingController(text: widget.userModel.ownerName);
    ownerNumber = TextEditingController(text: widget.userModel.ownerNumber);
    ownerExpire = TextEditingController(text: widget.userModel.ownerExpire);
  }

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
                        ownerName: ownerName!.text,
                        ownerNumber: ownerNumber!.text,
                        ownerExpire: ownerExpire!.text,
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
    ownerName!.dispose();
    ownerNumber!.dispose();
    ownerExpire!.dispose();
    finderName.dispose();
    finderEmail.dispose();
    finderAddress.dispose();
    finderPhone.dispose();
    super.dispose();
  }
}
