import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';

import 'package:fypproject/routes.dart';
import 'firebase_options.dart';

import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primarySwatch: Colors.blue),
      initialRoute: HomePage.routeName,
      routes: routes,
    );
  }
}
