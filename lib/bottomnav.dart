import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vanchan/community/community.dart';
import 'package:vanchan/material/material.dart';
import 'package:vanchan/project/project.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  int pageIndex = 0;

  final pages = [MaterialDataPage(), ProjectPage(), CommunityPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 16, 121, 174),
        title: Text('Vanchan',
            style:
                GoogleFonts.ubuntu(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 16, 121, 174)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: pageIndex == 0
                ? Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Image.asset("assets/images/material.png", height: 30),
                          const SizedBox(width: 7),
                          Text(
                            "Material",
                            style: GoogleFonts.poppins(
                                fontSize: 22, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                : Image.asset("assets/images/material.png", height: 30),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: pageIndex == 1
                  ? Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Image.asset("assets/images/project.png",
                                height: 30),
                            const SizedBox(width: 7),
                            Text("Project",
                                style: GoogleFonts.poppins(
                                    fontSize: 22, color: Colors.black))
                          ],
                        ),
                      ),
                    )
                  : Image.asset("assets/images/project.png", height: 30)),
          TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: pageIndex == 2
                  ? Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Image.asset("assets/images/community.png",
                                height: 30),
                            const SizedBox(width: 7),
                            Text("Community",
                                style: GoogleFonts.poppins(
                                    fontSize: 22, color: Colors.black))
                          ],
                        ),
                      ),
                    )
                  : Image.asset("assets/images/community.png", height: 30)),
        ],
      ),
    );
  }
}
