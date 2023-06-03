import 'package:flutter/material.dart';
import 'buttoncomp.dart/docs.dart';
import 'buttoncomp.dart/docs2.dart';
import 'cnic_findupload/cnic_find.dart';
import 'cnic_findupload/cnic_form.dart';
import 'cnic_findupload/cnic_show.dart';
import 'cnic_findupload/cnic_upload.dart';

import 'finder/pass_find.dart';
import 'finder/pass_upload.dart';
import 'home/passport.dart';
import 'homepage.dart';
import 'other_documents/docs_upload.dart';
import 'owner/own_docs.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  OwnDocs.routeName: (context) => const OwnDocs(),
  MyDocs.routeName: (context) => const MyDocs(),
  MyPassPort.routeName: (context) => const MyPassPort(),
  CnicFind.routeName: (context) => const CnicFind(),
  CnicUpload.routeName: (context) => const CnicUpload(),
  PaperDocs.routeName: (context) => const PaperDocs(),
  MyDocs2.routeName: (context) => const MyDocs2(),
  PassFind.routeName: (context) => const PassFind(),
  PassUpload.routeName: (context) => const PassUpload(),
  ShowCnic.routeName: (context) => const ShowCnic(),
  CnicForm.routeName: (context) => const CnicForm()
};
