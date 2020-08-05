import 'package:flutter/material.dart';
import 'detail_view.dart';

class DetailViewModel extends StatelessWidget {
  const DetailViewModel({
    Key key,
    @required this.height,
    @required this.widget,
  }) : super(key: key);

  final double height;
  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * height,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      decoration: BoxDecoration(
        color: Color(
          int.parse(
            widget.array[widget.index]['color'],
          ),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }
}
