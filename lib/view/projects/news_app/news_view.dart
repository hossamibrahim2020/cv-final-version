import 'package:flutter/material.dart';
import '../cv_app/cv_view.dart';
import 'news_viewmodel.dart';

class NewsView extends StatelessWidget {
  final NewsViewModel news = NewsViewModel(
    'Read News',
    'app that contain some article and take data sorce from fire store',
    'asset/images/news.jpg',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              news.description,
              style: ktextStyle,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .85,
              child: Image.asset(news.image1),
            ),
          ],
        ),
      ),
    );
  }
}
