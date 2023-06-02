// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pakistan_cnic/cnic_scanner.dart';
import 'package:pakistan_cnic/model/cnic_model.dart';
import 'package:image_picker/image_picker.dart';
import '../buttoncomp.dart/defaultbutton.dart';
import '../size_config.dart';
import 'cnic_show.dart';
import 'data_class.dart';
import 'src/custom_dialog.dart';

class CnicUpload extends StatefulWidget {
  const CnicUpload({Key? key}) : super(key: key);
  static String routeName = "/CnicUpload";

  @override
  State<CnicUpload> createState() => _CnicUploadState();
}

class _CnicUploadState extends State<CnicUpload> {
  final nameTEController = TextEditingController(),
      cnicTEController = TextEditingController(),
      dobTEController = TextEditingController(),
      doiTEController = TextEditingController(),
      doeTEController = TextEditingController();
  @override
  void dispose() {
    nameTEController.dispose();
    cnicTEController.dispose();
    dobTEController.dispose();
    doiTEController.dispose();
    doeTEController.dispose();

    super.dispose();
  }

  CnicModel _cnicModel = CnicModel();
  Future<void> scanCnic(ImageSource imageSource) async {
    CnicModel cnicModel =
        await CnicScanner().scanImage(imageSource: imageSource);
    setState(() {
      _cnicModel = cnicModel;
      nameTEController.text = _cnicModel.cnicHolderName;
      cnicTEController.text = _cnicModel.cnicNumber;
      dobTEController.text = _cnicModel.cnicHolderDateOfBirth;
      doiTEController.text = _cnicModel.cnicIssueDate;
      doeTEController.text = _cnicModel.cnicExpiryDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "Upload CNIC",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                fontWeight: FontWeight.bold,
                color: const Color(0XFFFF7643),
              ),
            ),
            const Text(
              "kindly upload the cnic ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            Image.asset(
              "assets/images/cnic.png",
              height: getProportionateScreenHeight(340),
              width: getProportionateScreenWidth(370),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: DefaultButton(
                press: () async {
                  await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialogBox(
                        onCameraBTNPressed: () {
                          scanCnic(ImageSource.camera);
                        },
                        onGalleryBTNPressed: () {
                          scanCnic(ImageSource.gallery);
                        },
                      );
                    },
                  );

                  Navigator.pushNamed(context, ShowCnic.routeName,
                      arguments: ShowData(
                        ownerName: nameTEController,
                        ownerNumber: cnicTEController,
                        ownerExpire: doeTEController,
                        // nameTEController,
                        // cnicTEController,
                        // doeTEController,
                      ));
                },
                text: " Upload Cnic",
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
