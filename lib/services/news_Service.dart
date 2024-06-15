import 'package:cinebyte_admin_webapp/models/news_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class newsService {
  final CollectionReference _newscollection =
      FirebaseFirestore.instance.collection('news');
  Future<newsModel> createnews(newsModel news) async {
    try {
      final newsmap = news.tomap();
      await _newscollection.doc(news.newsId).set(newsmap);
      return news;
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
        msg: "Failed to upload post: ${e.message}",
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
}
