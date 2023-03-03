import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'SilverAppBar Demo';
  final String title = 'Flutter and Dart Cookbook';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(
        title: title,
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
      backgroundColor: Colors.grey[300],
      body: const CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('Silver App Bar'),
            expandedHeight: 300,
            collapsedHeight: 150,
            floating: false,
          ),
        ],
      ),
    );
  }
}
