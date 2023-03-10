import 'package:flutter/material.dart';
import 'package:vanchan/services/Create/community/addcommunity.dart';

class CommunityPage extends StatefulWidget {
  CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final _formKey = GlobalKey<FormState>();

  late String firstname;
  late String lastname;
  late String contectno;
  late String emailid;
  late String collage;
  late String department;
  late String semester;
  late String technology;
  late String github;
  late String linkedin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "First Name"),
                          onChanged: (value) {
                            setState(() {
                              firstname = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Last Name"),
                          onChanged: (value) {
                            setState(() {
                              lastname = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Contect Number"),
                          onChanged: (value) {
                            setState(() {
                              contectno = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Email Id"),
                          onChanged: (value) {
                            setState(() {
                              emailid = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Collage"),
                          onChanged: (value) {
                            setState(() {
                              collage = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Department"),
                          onChanged: (value) {
                            setState(() {
                              department = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "College Semester"),
                          onChanged: (value) {
                            setState(() {
                              semester = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Technology"),
                          onChanged: (value) {
                            setState(() {
                              technology = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Github Profile Link"),
                          onChanged: (value) {
                            setState(() {
                              github = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Linkedin Profile Link"),
                          onChanged: (value) {
                            setState(() {
                              linkedin = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    final isValid = _formKey.currentState!.validate();
                    if (!isValid) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Fill All Information"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                    _formKey.currentState!.save();
                    Map<String, dynamic> studentdata = {
                      "First Name": firstname,
                      "Last Name": lastname,
                      "Contect No": contectno,
                      "Email Id": emailid,
                      "Collage": collage,
                      "Department": department,
                      "Semester": semester,
                      "Technology": technology,
                      "Github": github,
                      "Linkedin": linkedin,
                    };
                    writeData()
                        .addStudent(contectno, studentdata, context)
                        .then((result) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Details submitted"),
                        backgroundColor: Colors.red,
                      ));
                    });
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomAppBar(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
