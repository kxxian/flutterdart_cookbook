import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyData {
  final List<String> items = [
    'January',
    'Febuary',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  MyData();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Refactoring Data Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(
        title: _title,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final MyData data = MyData();

  @override
  Widget build(BuildContext context) {
    List items = data.items;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
