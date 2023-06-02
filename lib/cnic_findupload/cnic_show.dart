import 'package:flutter/material.dart';

import 'cnic_helper.dart';
import 'cnicmodel.dart';
import 'data_class.dart';

class ShowCnic extends StatefulWidget {
  const ShowCnic({super.key});
  static const routeName = '/show_cnic';

  @override
  State<ShowCnic> createState() => _ShowCnicState();
}

class _ShowCnicState extends State<ShowCnic> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ShowData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Details'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: args.ownerName,
                  decoration: const InputDecoration(
                    labelText: 'Name: ',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
                  controller: args.ownerNumber,
                  decoration: const InputDecoration(
                    labelText: 'Identity Number: ',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
                  controller: args.ownerExpire,
                  decoration: const InputDecoration(
                    labelText: 'Expiry: ',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        FirestoreHelper.addData(UserModel(
                          ownerName: args.ownerName.text,
                          ownerNumber: args.ownerNumber.text,
                          ownerExpire: args.ownerExpire.text,
                        ));
                        debugPrint(args.ownerName.text);
                        debugPrint(args.ownerNumber.text);
                        debugPrint(args.ownerExpire.text);
                      },
                      child: const Text('next please'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
