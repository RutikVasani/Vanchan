import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanchan/material/type/branch/viewpdf.dart';
import 'package:vanchan/services/Create/material/addmaterial.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BranchMaterialPage extends StatefulWidget {
  String sortsubname;
  String type;
  String branch;
  BranchMaterialPage(
      {super.key,
      required this.sortsubname,
      required this.type,
      required this.branch});

  @override
  State<BranchMaterialPage> createState() => _BranchMaterialPageState();
}

class _BranchMaterialPageState extends State<BranchMaterialPage> {
  late String filename;
  String url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 121, 174),
        title: Text(
          "Material",
          style: TextStyle(fontSize: 25, letterSpacing: 2),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("Material")
            .doc(widget.sortsubname)
            .collection("Type")
            .doc(widget.type)
            .collection(widget.branch)
            .snapshots(),
        builder:
            (__, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            if (snapshot.data!.docs.isNotEmpty) {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (___, int index) {
                    Map<String, dynamic> docMaterial =
                        snapshot.data!.docs[index].data();
                    String uid = snapshot.data!.docs[index].id;
                    if (docMaterial.isEmpty) {
                      return const SizedBox(
                        child: Center(
                          child: Text("No Material Avalible"),
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Text(
                                      docMaterial["File Name"],
                                      style: GoogleFonts.ubuntu(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.share,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.download,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewPdfPage(
                                        url: docMaterial["File Url"],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.picture_as_pdf),
                                      ),
                                      Text(
                                        docMaterial["File Name"],
                                        style: TextStyle(
                                            fontSize: 18, letterSpacing: 1),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: Text("Material not available"),
              );
            }
          } else {
            return const Center(
              child: Text("Getting Error"),
            );
          }
        },
      ),
    );
  }
}
