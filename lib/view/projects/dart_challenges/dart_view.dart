import 'package:flutter/material.dart';
import 'package:hossamibrahimcv/view/projects/dart_challenges/dart_viewmodel.dart';
import 'package:hossamibrahimcv/view/shared_ui/constants.dart';
import '../cv_app/cv_view.dart';

class DartView extends StatelessWidget {
  final DartViewModel dartViewModel = DartViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart challenges'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Text(
              'I Love to solve problems and I take a decision to solve problems and put it in this repo',
              style: ktextStyle,
            ),
            kSizedBox,
            kSizedBox,
            kSizedBox,
            RaisedButton(
              onPressed: () {
                dartViewModel.gotodChallenges();
              },
              child: Text('Go To repo'),
            ),
          ],
        ),
      ),
    );
  }
}
