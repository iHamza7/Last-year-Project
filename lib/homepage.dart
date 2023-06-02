import 'package:flutter/material.dart';
import 'package:fypproject/components/body.dart';
import 'package:fypproject/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String routeName = "/Splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
