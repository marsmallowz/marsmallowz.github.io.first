import 'package:flutter/material.dart';
import 'package:personal_web/ui/pages/pages.dart';
import 'package:personal_web/ui/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

extension on TextStyle {
  TextStyle get withZoomFix => copyWith(wordSpacing: 0);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
            bodyText1: Theme.of(context).textTheme.bodyText1.withZoomFix),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/myprofile': (context) => ProfilePage(),
      },
//      home: HomePage(),
    );
  }
}
