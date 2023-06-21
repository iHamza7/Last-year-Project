import 'package:flutter/material.dart';

import '../buttoncomp.dart/docs.dart';
import '../buttoncomp.dart/docs2.dart';
import '../size_config.dart';

class OwnDocs extends StatefulWidget {
  const OwnDocs({Key? key}) : super(key: key);
  static String routeName = "/Owndocs";

  @override
  State<OwnDocs> createState() => _OwnDocsState();
}

class _OwnDocsState extends State<OwnDocs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "Describe Who You are !",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  fontWeight: FontWeight.bold,
                  color: const Color(0XFFFF7643),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 10),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyDocs.routeName);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_search,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              "Owner",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyDocs2.routeName);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_add,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              "Finder",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
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
