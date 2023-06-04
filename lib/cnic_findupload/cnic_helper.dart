// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

import 'cnicmodel.dart';

class FirestoreHelper {
  // static retrieveData(String ownerNum) async {
  //   final snapshot = await FirebaseFirestore.instance
  //       .collection("finderList")
  //       .where("OwnerNumber", isEqualTo: ownerNum)
  //       .get();

  //   return Future.value(snapshot.docs.first.data());
  // }
  retrieveData(String ownerNum) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('finderList')
        .where("OwnerNumber", isEqualTo: ownerNum)
        .get();
    if (snapshot.docs.isNotEmpty) {
      return snapshot.docs.first.data();
    } else {
      print('data is not get');
    }
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
