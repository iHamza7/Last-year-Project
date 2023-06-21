import 'package:flutter/material.dart';

import '../owner/own_docs.dart';
import '../size_config.dart';
import 'cnic_helper.dart';
import 'text_field.dart';

class CnicFind extends StatefulWidget {
  const CnicFind({Key? key}) : super(key: key);
  static String routeName = "/CnicFind";

  @override
  State<CnicFind> createState() => _CnicFindState();
}

class _CnicFindState extends State<CnicFind> {
  TextEditingController ownerNumber = TextEditingController();
  TextEditingController ownerName = TextEditingController();
  TextEditingController finderName = TextEditingController();
  TextEditingController finderAddress = TextEditingController();
  TextEditingController finderEmail = TextEditingController();
  TextEditingController finderPhone = TextEditingController();

  @override
  void dispose() {
    ownerName.dispose();
    ownerNumber.dispose();
    finderName.dispose();
    finderEmail.dispose();
    finderAddress.dispose();
    finderPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search CNIC"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              "Kindly Enter Information as per your Cnic !",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextInputField("Enter Name ", ownerName),
            const SizedBox(
              height: 12,
            ),
            TextInputField("Enter Identity ", ownerNumber),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFFF7643),
                  ),
                  onPressed: () async {
                    if (ownerNumber.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("provide the info please")));
                      return;
                    } else if (ownerNumber.text.isNotEmpty) {
                      var dataShot = await FirestoreHelper()
                          .retrieveData(ownerNumber.text.trim());
                      finderName.text = dataShot['FinderName'];
                      finderEmail.text = dataShot['FinderEmail'];
                      finderAddress.text = dataShot['FinderAddress'];
                      finderPhone.text = dataShot['FinderPhone'];
                    }
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            TextInputField("Finder Name ", finderName),
            const SizedBox(
              height: 12,
            ),
            TextInputField("Finder Email ", finderEmail),
            const SizedBox(
              height: 12,
            ),
            TextInputField("Finder Address ", finderAddress),
            const SizedBox(
              height: 12,
            ),
            TextInputField("Finder Phone ", finderPhone),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFFF7643),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OwnDocs()));
                  },
                  child: const Text('Done'),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
