import 'package:cloud_firestore/cloud_firestore.dart';

class databaseMethods {
  Stream? castingcallStream;
  Future getCastingcalls() async {
    castingcallStream =
        FirebaseFirestore.instance.collection('castingcalls').snapshots();
  }
}
