import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hossamibrahimcv/view/contacts/contacts_viewmodel.dart';
import 'package:hossamibrahimcv/view/image/image_viewmodel.dart';
import 'package:hossamibrahimcv/view/navigation/navigation_by_drawer.dart';
import 'package:hossamibrahimcv/view/shared_ui/constants.dart';

class ContactsView extends StatelessWidget {
  final ContactsViewModel _contactsViewModel = ContactsViewModel();
  final ImageViewModel _image = ImageViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: DrawerNavigationView(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              kSizedBox,
              kSizedBox,
              Hero(
                tag: _image.tag,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/image');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/images/hossam.jpg'),
                    radius: 80,
                  ),
                ),
              ),
              kSizedBox,
              portrait(),
              kSizedBox,
              kSizedBox,
            ],
          ),
        ),
      ),
    );
  }

  Widget portrait() {
    return Column(
      children: [
        Text(
          'Hossam Ibrahim',
          style: kstyle,
        ),
        kSizedBox,
        Text(
          'Flutter developer',
          style: kstyleFlutter,
        ),
        kSizedBox,
        Card(
          child: ListTile(
            leading: Icon(Icons.location_city),
            title: Text('El mahala El kobra'),
            onTap: () {
              _contactsViewModel.goToElmahalla();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.email),
            title: Text('hossamibra18@gmail.com'),
            onTap: () {
              _contactsViewModel.goToMyEmail();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.phone),
            title: Text('0111 604 1868'),
            onTap: () {
              _contactsViewModel.goToMyPhone();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: FaIcon(FontAwesomeIcons.github),
            title: Text('GitHub'),
            onTap: () {
              _contactsViewModel.goToMyGitHub();
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: FaIcon(FontAwesomeIcons.facebook),
            title: Text('Facebook'),
            onTap: () {
              _contactsViewModel.goToMyFacebook();
            },
          ),
        ),
      ],
    );
  }
}
