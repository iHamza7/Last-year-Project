import 'package:flutter/material.dart';

import '../size_config.dart';

class CnicFind extends StatefulWidget {
  const CnicFind({Key? key}) : super(key: key);
  static String routeName = "/CnicFind";

  @override
  State<CnicFind> createState() => _CnicFindState();
}

class _CnicFindState extends State<CnicFind> {
  TextEditingController ownerName = TextEditingController();
  TextEditingController ownerNam = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search CNIC"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            "Kindly Enter Information as per your Cnic !",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextField(
              controller: ownerName,
              decoration: const InputDecoration(
                labelText: "enter name",
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextField(
              controller: ownerNam,
              decoration: const InputDecoration(
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    if (ownerName.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("provide the info please")));
                      return;
                    }
                  },
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
