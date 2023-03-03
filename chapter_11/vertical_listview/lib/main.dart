import 'package:flutter/material.dart';

class ListDataItems {
  final List<String> monthItems = [
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

  ListDataItems();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Vertical ListView Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  MyListView({Key? key}) : super(key: key);

  final ListDataItems item = ListDataItems();
  final String title = 'Vertical ListView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: item.monthItems.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(item.monthItems[index]));
          }),
    );
  }
}
