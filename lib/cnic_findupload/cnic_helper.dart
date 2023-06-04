// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

import 'cnicmodel.dart';

class FirestoreHelper {
  Future<Map<String, dynamic>> retrieveData(String ownerNumber) async {
    QuerySnapshot<Map<String, dynamic>> snapshot = FirebaseFirestore.instance
        .collection("finderList")
        .where("ownerNumber", isEqualTo: ownerNumber)
        .get() as QuerySnapshot<Map<String, dynamic>>;

    return Future.value(snapshot.docs.first.data());
  }

  static Future addData(UserModel user) async {
    final usercollection = FirebaseFirestore.instance.collection("finderList");

    final docRef = usercollection.doc(user.ownerName);

    final newUser = UserModel(
      ownerName: user.ownerName,
      ownerNumber: user.ownerNumber,
      ownerExpire: user.ownerExpire,
      finderName: user.finderName,
      finderEmail: user.finderEmail,
      finderAddress: user.finderAddress,
      finderPhone: user.finderPhone,
    ).toJson();
    try {
      await docRef.set(newUser);
      print(newUser);
    } catch (e) {
      print('error $e');
    }
  }
}
