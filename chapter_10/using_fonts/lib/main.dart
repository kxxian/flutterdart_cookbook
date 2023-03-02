import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Google Fonts Demo';
  static const _homeTitle = 'Flutter and Dart Cookbook';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.aBeeZee(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
          bodyMedium: GoogleFonts.aBeeZee(
            fontSize: 30,
            color: Colors.white60,
          ),
        ),
      ),
      home: const MyHome(
        title: _homeTitle,
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  final String title;

  const MyHome({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Text('Yo MTV Raps'),
          Text(
            'Yo MTV Raps',
            style: GoogleFonts.coiny(
              fontSize: 30,
              color: Colors.blueGrey,
            ),
          ),
          Text(
            'Yo MTV Raps',
            style: GoogleFonts.actor(
              fontSize: 30,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
