import 'package:flutter/material.dart';

// import 'cnic_helper.dart';
// import 'cnicmodel.dart';
import 'data_class.dart';
import 'text_field.dart';

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
              TextInputField(
                "Name",
                args.ownerName,
              ),
              TextInputField(
                "Identity Number",
                args.ownerNumber,
              ),
              TextInputField(
                "Expiry Date",
                args.ownerExpire,
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
                        //   FirestoreHelper.addData(UserModel(
                        //     ownerName: args.ownerName.text,
                        //     ownerNumber: args.ownerNumber.text,
                        //     ownerExpire: args.ownerExpire.text,
                        //   ));
                        //   debugPrint(args.ownerName.text);
                        //   debugPrint(args.ownerNumber.text);
                        //   debugPrint(args.ownerExpire.text);
                      },
                      child: const Text('next here'),
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
