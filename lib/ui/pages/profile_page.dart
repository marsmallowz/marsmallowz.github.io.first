import 'package:flutter/material.dart';

extension on TextStyle {
  TextStyle get withZoomFix => copyWith(wordSpacing: 0);
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text(
              "Back",
              style: TextStyle().withZoomFix,
            ),
          ),
        ),
      ),
    );
  }
}
