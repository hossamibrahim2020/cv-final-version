import 'package:url_launcher/url_launcher.dart';

class DartViewModel {
  String _challengesURL = 'https://github.com/hossamibrahim2020/dart_challenge';
  void gotodChallenges() async {
    if (await canLaunch(_challengesURL)) {
      await launch(_challengesURL);
    } else {
      throw 'Could not launch $_challengesURL';
    }
  }
}
