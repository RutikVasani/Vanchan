import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDiscriptionPage extends StatelessWidget {
  const ProjectDiscriptionPage({super.key});

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "mPigeon",
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
                      "Online One-to-One Chat Application",
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
                      "JAVA, Application Development",
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
                      "20DCS119 - Yash Shah",
                      style: GoogleFonts.ubuntu(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "20DCS116 - Shashank Shah",
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
                      "Github",
                      style: GoogleFonts.ubuntu(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "https://github.com/Shashank1719/mPigeon",
                      style: GoogleFonts.ubuntu(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
