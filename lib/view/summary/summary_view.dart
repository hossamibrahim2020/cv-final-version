import 'package:flutter/material.dart';
import 'package:hossamibrahimcv/view/shared_ui/constants.dart';
import 'package:hossamibrahimcv/view/summary/summary_viewmodel.dart';
import '../navigation/navigation_by_drawer.dart';

class SummaryView extends StatelessWidget {
  final SummaryViewModel _summaryViewModel = SummaryViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
      ),
      drawer: DrawerNavigationView(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Text(
            '${_summaryViewModel.summary}',
            style: kstyleFlutter,
          ),
        ),
      ),
    );
  }
}
