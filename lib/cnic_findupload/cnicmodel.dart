import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? ownerName, ownerNumber, ownerExpire;

  UserModel({
    this.ownerName,
    this.ownerNumber,
    this.ownerExpire,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return UserModel(
      ownerName: snapshot["Name"],
      ownerNumber: snapshot["Number"],
      ownerExpire: snapshot["ExpiryDate"],
    );
  }
  Map<String, dynamic> toJson() => {
        "Name": ownerName,
        "Number": ownerNumber,
        "ExpiryDate": ownerExpire,
      };
}
