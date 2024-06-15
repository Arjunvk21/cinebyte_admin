import 'package:cinebyte_admin_webapp/models/rentalsModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class rentalService {
  final CollectionReference _rentalCollection =
      FirebaseFirestore.instance.collection('rentals');

  Future<rentalsModel> createRentals(rentalsModel rentals) async {
    try {
      final rentalmap = rentals.tomap();
      await _rentalCollection.doc(rentals.rentalProductId).set(rentalmap);
      Fluttertoast.showToast(
        msg: "Succesfully Uploaded Product",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return rentals;
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Failed to Upload Product",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      rethrow;
    }
  }

  Future<rentalsModel> updaterentaldetails(rentalsModel rentals) async {
    final rentalmap = rentals.tomap();
    await _rentalCollection.doc(rentals.rentalProductId).update(rentalmap);
    return rentals;
  }

  Future deleteRentalProduct(String? productID) async {
    try {
      await _rentalCollection.doc(productID).delete();
    } catch (e) {
      rethrow;
    }
  }
}
