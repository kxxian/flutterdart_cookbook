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

  static const _title = 'Horizontal ListView';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyHorizontalListView(),
    );
  }
}

class MyHorizontalListView extends StatelessWidget {
  MyHorizontalListView({Key? key}) : super(key: key);

  final ListDataItems item = ListDataItems();
  final String title = 'Horizontal ListView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.monthItems.length,
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.monthItems[index]),
                const SizedBox(width: 10),
              ],
            );
          }),
    );
  }
}
