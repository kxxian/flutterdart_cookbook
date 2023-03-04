import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const paramTitle = 'My Title';
    const paramName = 'My Name';

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: paramTitle,
      home: MyTextWidget(
        name: paramName,
        title: paramTitle,
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  final String title;
  final String name;
  const MyTextWidget({
    Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('$title $name'),
      ),
    );
  }
}
