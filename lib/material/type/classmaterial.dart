import 'package:flutter/material.dart';
import 'package:scholer/material/type/branch/branch.dart';

class ClassMaterialPage extends StatelessWidget {
  const ClassMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BranchPage(),
    );
  }
}