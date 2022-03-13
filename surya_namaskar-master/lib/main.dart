import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Surya Namaskar',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
          headline6: TextStyle(
            fontSize: 32.0,
            fontStyle: FontStyle.italic,
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Arial',
          ),
        ),
      ),
      //the home Page is a Form to take the users inputs
      // which controls the performance of the application
      home: homePage(),
    );
  }
}
