import 'package:cloud_firestore/cloud_firestore.dart';

class rentalsModel {
  String? rentalProductId;
  String? productName;
  String? productratePerDay;
  String? productImage;
  String? productDecription;

  rentalsModel(
      {this.productName,this.productDecription,
      this.productImage,
      this.productratePerDay,
      this.rentalProductId});

  factory rentalsModel.fromjson(DocumentSnapshot data) {
    return rentalsModel(
        productDecription: data['productDecription'],
        productName: data['productName'],
        productImage: data['productImage'],
        productratePerDay: data['ratePerDay'],
        rentalProductId: data['rentalId']);

  }

  Map<String, dynamic> tomap() {
    return {
      'productName':productName,
      'productImage':productImage,
      'productDecription':productDecription,
      'productratePerDay':productratePerDay,
      'rentalProductId':rentalProductId
    };
  }
}

