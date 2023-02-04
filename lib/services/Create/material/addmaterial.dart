import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class WriteData {
  // add sunject
  Future<void> addSubject(
    sortsubname,
    subject,
    BuildContext context,
  ) async {
    try {
      FirebaseFirestore.instance
          .collection('Material')
          .doc(sortsubname)
          .set(subject);
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

  // add Material
  Future<void> addMaterial(
    sortsubname,
    type,
    branch,
    filename,
    material,
    BuildContext context,
  ) async {
    try {
      FirebaseFirestore.instance
          .collection('Material')
          .doc(sortsubname)
          .collection('Type')
          .doc(type)
          .collection(branch)
          .doc(filename)
          .set(material);
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
