import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? ownerName,
      ownerNumber,
      ownerExpire,
      finderName,
      finderEmail,
      finderAddress,
      finderPhone;

  UserModel({
    this.ownerName,
    this.ownerNumber,
    this.ownerExpire,
    this.finderName,
    this.finderEmail,
    this.finderAddress,
    this.finderPhone,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return UserModel(
      ownerName: snapshot["OwnerName"],
      ownerNumber: snapshot["OwnerNumber"],
      ownerExpire: snapshot["ExpiryDate"],
      finderName: snapshot["FinderName"],
      finderEmail: snapshot["FinderEmail"],
      finderAddress: snapshot["FinderAddress"],
      finderPhone: snapshot["FinderPhone"],
    );
  }
  Map<String, dynamic> toJson() => {
        "OwnerName": ownerName,
        "OwnerNumber": ownerNumber,
        "ExpiryDate": ownerExpire,
        "FinderName": finderName,
        "FinderEmail": finderEmail,
        "FinderAddress": finderAddress,
        "FinderPhone": finderPhone,
      };
}
