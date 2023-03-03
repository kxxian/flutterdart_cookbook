import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'SnackBar Pop-up Notification';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyHome(),
    );
  }
}

class ListViewData {
  final List<String> monthItems = [
    'January',
    'Febuary',
    'March',
  ];
}

class MyHome extends StatelessWidget {
  MyHome({Key? key}) : super(key: key);

  final String title = 'SnackBar Demo';
  final ListViewData items = ListViewData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.monthItems.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(items.monthItems[index]),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                        Text('You have selected ${items.monthItems[index]}'),
                    duration: const Duration(
                      seconds: 1,
                      milliseconds: 500,
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
