import 'package:flutter/material.dart';
import '../navigation/navigation_by_drawer.dart';
import '../detail/detail_view.dart';
import '../shared_ui/constants.dart';
import '../shared_ui/index_of_index.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'dart:async';

class SkillsView extends StatefulWidget {
  @override
  _SkillsViewState createState() => _SkillsViewState();
}

class _SkillsViewState extends State<SkillsView> {
  List array = [];
  // ignore: missing_return
  Future<String> loadJsonData() async {
    var jsonData = await rootBundle.loadString(jsonfile);
    setState(() {
      return array = json.decode(jsonData);
    });
  }

  @override
  void initState() {
    this.loadJsonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills'),
      ),
      drawer: DrawerNavigationView(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: array.length,
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailView(array, index),
                  ),
                );
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                      ),
                      Text(
                        array[index]['title'],
                        style: kstyleFlutter,
                      ),
                      IndexOfSkills(
                        color: Color(int.parse(array[index]['color'])),
                        width: _widthSize * array[index]['widthValue'],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
