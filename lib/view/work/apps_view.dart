import 'package:flutter/material.dart';
import '../navigation/navigation_by_drawer.dart';

class AppsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      drawer: DrawerNavigationView(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal.shade200,
                child: Text(
                  'T',
                ),
              ),
              title: Text(
                'flutter translation',
              ),
              onTap: () => Navigator.of(context).pushNamed('/trans'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'S',
                ),
              ),
              title: Text(
                'Store Room',
              ),
              onTap: () => Navigator.of(context).pushNamed('/store'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  'C',
                ),
              ),
              title: Text(
                'Dart Challenges',
              ),
              onTap: () => Navigator.of(context).pushNamed('/dart'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Text(
                  'C',
                ),
              ),
              title: Text(
                'C.V',
              ),
              onTap: () => Navigator.of(context).pushNamed('/cv'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  'N',
                ),
              ),
              title: Text(
                'News App',
              ),
              onTap: () => Navigator.of(context).pushNamed('/news'),
            ),
          ),
        ],
      ),
    );
  }
}
