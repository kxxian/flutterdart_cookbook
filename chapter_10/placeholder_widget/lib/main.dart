import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Expanded Widget';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyExpandedWidget(),
    );
  }
}

class MyExpandedWidget extends StatelessWidget {
  const MyExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          child: Placeholder(
            fallbackWidth: 400,
            strokeWidth: 10,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Placeholder(
            fallbackWidth: 400,
            strokeWidth: 10,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Placeholder(
            fallbackWidth: 400,
            strokeWidth: 10,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
