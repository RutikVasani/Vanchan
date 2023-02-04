import 'package:flutter/material.dart';
import 'package:vanchan/services/Create/project/addproject.dart';

class AddProjectPage extends StatefulWidget {
  const AddProjectPage({super.key});

  @override
  State<AddProjectPage> createState() => _AddProjectPageState();
}

class _AddProjectPageState extends State<AddProjectPage> {
  final _formKey = GlobalKey<FormState>();
  late String projecttitle;
  late String description;
  late String technology;
  late String developer1;
  var developer2;
  var developer3;
  late String github;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 3.0,
        backgroundColor: const Color.fromARGB(255, 16, 121, 174),
        title: Text(
          "Add Project",
          style: TextStyle(fontSize: 25, letterSpacing: 2),
        ),
      ),
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
                              const InputDecoration(hintText: "Project Title"),
                          onChanged: (value) {
                            setState(() {
                              projecttitle = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Description"),
                          onChanged: (value) {
                            setState(() {
                              description = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "HTML,CSS"),
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
                          decoration:
                              const InputDecoration(hintText: "Developer 1"),
                          onChanged: (value) {
                            setState(() {
                              developer1 = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextField(
                          decoration:
                              const InputDecoration(hintText: "Developer 2"),
                          onChanged: (value) {
                            setState(() {
                              developer2 = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextField(
                          decoration:
                              const InputDecoration(hintText: "Developer 3"),
                          onChanged: (value) {
                            setState(() {
                              developer3 = value;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Github Link"),
                          onChanged: (value) {
                            setState(() {
                              github = value;
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
                    Map<String, dynamic> projectdata = {
                      "Project Title": projecttitle,
                      "Description": description,
                      "Technology": technology,
                      "Developer 1": developer1,
                      "Developer 2": developer2,
                      "Developer 3": developer3,
                      "Github": github,
                    };
                    WriteData()
                        .addProject(projecttitle, projectdata, context)
                        .then((result) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Project Added"),
                        backgroundColor: Colors.red,
                      ));
                    });
                    Navigator.pop(context);
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
