import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WriteData {

  //add project
  Future<void> addProject(
    projecttitle,
    projectdata,
    BuildContext context,
  ) async {
    try {
      FirebaseFirestore.instance
          .collection('Project')
          .doc(projecttitle)
          .set(projectdata);
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