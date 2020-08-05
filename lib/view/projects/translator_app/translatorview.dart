import 'package:flutter/material.dart';
import './translator_viewmodel.dart';
import '../cv_app/cv_view.dart';

class TranslateView extends StatelessWidget {
  final TranslatorViewModel translate = TranslatorViewModel(
    'Translate',
    '''app that can translate simple words from english to arabic you can find code in my github account
    ''',
    'asset/images/tran.jpg',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translate.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              translate.description,
              style: ktextStyle,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .85,
              child: Image.asset(translate.image1),
            ),
          ],
        ),
      ),
    );
  }
}
