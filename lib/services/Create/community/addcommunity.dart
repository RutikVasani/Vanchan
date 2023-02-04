import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class writeData {

  //add community
  Future<void> addStudent(
    contectno,
    studentdata,
    BuildContext context,
  ) async {
    try {
      FirebaseFirestore.instance
          .collection('Community')
          .doc(contectno)
          .set(studentdata);
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.message.toString(),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}