import 'package:flutter/material.dart';
import './image_viewmodel.dart';

class ImageView extends StatelessWidget {
  final ImageViewModel _image = ImageViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Hero(
        tag: _image.tag,
        child: Center(
          child: Image.asset(_image.image),
        ),
      ),
    );
  }
}
