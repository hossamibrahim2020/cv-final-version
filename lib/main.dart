import 'package:flutter/material.dart';
import 'view/summary/summary_view.dart';
import 'view/work/apps_view.dart';
import 'view/education/education_view.dart';
import 'view/contacts/contacts_view.dart';
import 'view/projects/dart_challenges/dart_view.dart';
import 'view/image/image_view.dart';
import 'view/projects/cv_app/cv_view.dart';
import 'view/projects/news_app/news_view.dart';
import 'view/projects/store_room/store_room_view.dart';
import 'view/projects/translator_app/translatorview.dart';
import 'view/shared_ui/reusable_theme.dart';
import 'view/skills/skills_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C.V',
      theme: reusableTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => ContactsView(),
        '/image': (context) => ImageView(),
        '/store': (context) => StoreRoomView(),
        '/cv': (context) => CVView(),
        '/news': (context) => NewsView(),
        '/trans': (context) => TranslateView(),
        '/dart': (context) => DartView(),
        '/sk': (context) => SkillsView(),
        '/edu':(context)=>EducationView(),
        '/app':(context)=>AppsView(),
        '/sum':(context)=>SummaryView(),
      },
    );
  }
}

/*
    SummaryView(),*/
