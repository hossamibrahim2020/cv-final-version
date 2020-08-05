import 'package:flutter/material.dart';
import '../navigation/navigation_by_drawer.dart';
import 'education_viewmodel.dart';

class EducationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      drawer: DrawerNavigationView(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: EducationViewModel(),
      ),
    );
  }
}
