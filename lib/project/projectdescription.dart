import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDiscriptionPage extends StatefulWidget {
  final String projecttitle;
  ProjectDiscriptionPage({super.key, required this.projecttitle});

  @override
  State<ProjectDiscriptionPage> createState() => _ProjectDiscriptionPageState();
}

class _ProjectDiscriptionPageState extends State<ProjectDiscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 3.0,
        backgroundColor: const Color.fromARGB(255, 16, 121, 174),
        title: Text(
          "Description",
          style: TextStyle(fontSize: 25, letterSpacing: 2),
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("Project")
              .doc(widget.projecttitle)
              .snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            Map<String, dynamic> docProjectData = snapshot.data.data();
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        docProjectData["Project Title"],
                        style: GoogleFonts.ubuntu(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        docProjectData["Description"],
                        style: GoogleFonts.ubuntu(fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Divider(thickness: 2),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Techology",
                        style: GoogleFonts.ubuntu(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        docProjectData["Technology"],
                        style: GoogleFonts.ubuntu(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Divider(thickness: 2),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Developer",
                        style: GoogleFonts.ubuntu(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        docProjectData["Developer 1"],
                        style: GoogleFonts.ubuntu(fontSize: 15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        docProjectData["Developer 2"] ?? "",
                        style: GoogleFonts.ubuntu(fontSize: 15),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        docProjectData["Developer 3"] ?? "",
                        style: GoogleFonts.ubuntu(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Divider(thickness: 2),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Github",
                        style: GoogleFonts.ubuntu(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      String url = docProjectData["Github"];
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url, forceSafariVC: false);
                      } else {
                        print("The action is not supported.");
                      }
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          docProjectData["Github"],
                          style: GoogleFonts.ubuntu(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
