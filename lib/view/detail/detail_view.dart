import 'package:flutter/material.dart';
import './detail_viewmodel.dart';

class DetailView extends StatefulWidget {
  final List array;
  final int index;
  DetailView(this.array, this.index);

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  double height = 0.0;

  Future containerAimation() {
    return Future.delayed(Duration(microseconds: 400), () {
      setState(() {
        height = widget.array[widget.index]['widthValue'];
      });
    });
  }

  @override
  void initState() {
    this.containerAimation();
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(widget.array[widget.index]['title']),
        backgroundColor: Color(
          int.parse(
            widget.array[widget.index]['color'],
          ),
        ),
      ),
      body: DetailViewModel(height: height, widget: widget),
    );
  }
}
