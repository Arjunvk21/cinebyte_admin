import 'package:cloud_firestore/cloud_firestore.dart';

class newsModel {
  String? newsId;
  String? newsImage;
  newsModel({this.newsId, this.newsImage});

  factory newsModel.fromjson(DocumentSnapshot data) {
    return newsModel(newsId: data['newsId'], newsImage: data['newsImage']);
  }
  Map<String, dynamic> tomap() {
    return {'newsId': newsId, 'newsImage': newsImage};
  }
}
