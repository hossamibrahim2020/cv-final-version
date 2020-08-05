import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    popNaviagtion() => Navigator.pop(context);
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              popNaviagtion();
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('Skills'),
            leading: Icon(Icons.code),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              popNaviagtion();
              Navigator.pushNamed(context, '/sk');
            },
          ),
          ListTile(
            title: Text('Education'),
            leading: Icon(Icons.code),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              popNaviagtion();
              Navigator.pushNamed(context, '/edu');
            },
          ),
          ListTile(
            title: Text('Portfolio'),
            leading: Icon(FontAwesomeIcons.appStore),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              popNaviagtion();
              Navigator.pushNamed(context, '/app');
            },
          ),
          ListTile(
            title: Text('Summary'),
            leading: Icon(Icons.comment),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              popNaviagtion();
              Navigator.pushNamed(context, '/sum');
            },
          ),
        ],
      ),
    );
  }
}
