import 'package:flutter/material.dart';
import 'cv_viewmodel.dart';

final TextStyle ktextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w300,
);

class CVView extends StatelessWidget {
  final CVViewmodel cv = CVViewmodel(
      'C.V',
      '''this is my CV but it make by using flutter web 
      ''',
      'asset/images/cv.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cv.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              cv.description,
              style: ktextStyle,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .85,
              child: Image.asset(cv.image1),
            ),
          ],
        ),
      ),
    );
  }
}
