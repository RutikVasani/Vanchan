import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanchan/material/type/materialtypebranch.dart';

class MaterialTypePage extends StatefulWidget {
  String sortsubname;
  MaterialTypePage({super.key, required this.sortsubname});

  @override
  State<MaterialTypePage> createState() => _MaterialTypePageState();
}

class _MaterialTypePageState extends State<MaterialTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          elevation: 3.0,
          backgroundColor: const Color.fromARGB(255, 16, 121, 174),
          title: Text(
            widget.sortsubname,
            style: TextStyle(fontSize: 23, letterSpacing: 2),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaterialTypeBranchPage(
                              type: 'Class Material',
                              sortsubname: widget.sortsubname,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Class Material",
                        style: GoogleFonts.ubuntu(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaterialTypeBranchPage(
                              type: 'Practical File',
                              sortsubname: widget.sortsubname,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Practical File",
                        style: GoogleFonts.ubuntu(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaterialTypeBranchPage(
                              type: 'Assignment',
                              sortsubname: widget.sortsubname,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Assignment",
                        style: GoogleFonts.ubuntu(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaterialTypeBranchPage(
                              type: 'Mini Project',
                              sortsubname: widget.sortsubname,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Mini Project",
                        style: GoogleFonts.ubuntu(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaterialTypeBranchPage(
                              type: 'Question Paper',
                              sortsubname: widget.sortsubname,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Question Paper",
                        style: GoogleFonts.ubuntu(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5)
              ],
            ),
          ),
        ));
  }
}
