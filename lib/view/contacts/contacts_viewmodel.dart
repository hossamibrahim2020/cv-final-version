import 'package:url_launcher/url_launcher.dart';

class ContactsViewModel {
  final _elmahalaMap =
      'https://www.facebook.com/people/Hossam-Ibrahim/100047228409786';

  final _gotoEmail = 'mailto:hossamibra18@gmail.com?subject=&body=';
  final _goToPhone = 'tel:01116041868';
  final _goToFacebook =
      'https://www.facebook.com/people/Hossam-Ibrahim/100047228409786';
  final _goToGitHub = 'https://github.com/hossamibrahim2020';
  void goToElmahalla() async {
    if (await canLaunch(_elmahalaMap)) {
      await launch(_elmahalaMap);
    } else {
      throw 'Could not launch $_elmahalaMap';
    }
  }

  void goToMyEmail() async {
    if (await canLaunch(_gotoEmail)) {
      await launch(_gotoEmail);
    } else {
      throw 'Could not launch $_gotoEmail';
    }
  }

  void goToMyPhone() async {
    if (await canLaunch(_goToPhone)) {
      await launch(_goToPhone);
    } else {
      throw 'Could not launch $_goToPhone';
    }
  }

  void goToMyFacebook() async {
    if (await canLaunch(_goToFacebook)) {
      await launch(_goToFacebook);
    } else {
      throw 'Could not launch $_goToFacebook';
    }
  }

  void goToMyGitHub() async {
    if (await canLaunch(_goToGitHub)) {
      await launch(_goToGitHub);
    } else {
      throw 'Could not launch $_goToGitHub';
    }
  }
}
