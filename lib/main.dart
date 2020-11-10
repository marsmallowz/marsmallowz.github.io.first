import 'package:flutter/material.dart';
import 'package:personal_web/ui/pages/pages.dart';

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

      onGenerateRoute: (settings) {
        if (settings.name == '/prediction') {
          final ScreenArguments args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return PredictionPage(
                indication: args.prediction,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/myprofile': (context) => ProfilePage(),
        '/tugas': (context) => TugasPage(),
        '/about': (context) => AboutPage(),

//        '/tugas': (context) => TugasPage(),
      },
//      home: HomePage(),
    );
  }
}
