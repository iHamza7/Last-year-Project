// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

import 'cnicmodel.dart';

class FirestoreHelper {
  static Future addData(UserModel user) async {
    final usercollection = FirebaseFirestore.instance.collection("finderList");

    final docRef = usercollection.doc(user.ownerName);

    final newUser = UserModel(
      ownerName: user.ownerName,
      ownerNumber: user.ownerNumber,
      ownerExpire: user.ownerExpire,
    ).toJson();
    try {
      await docRef.set(newUser);
      print(newUser);
    } catch (e) {
      print('error $e');
    }
  }
}
