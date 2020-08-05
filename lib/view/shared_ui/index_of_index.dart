import 'package:flutter/material.dart';

class IndexOfSkills extends StatelessWidget {
  final Color color;
  final double width;
  IndexOfSkills({this.color, this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 30,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
