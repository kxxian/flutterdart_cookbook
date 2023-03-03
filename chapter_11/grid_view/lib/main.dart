import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'GridView Example';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  final String title = 'GridView Demo';
  final gridItems = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.builder(
        itemCount: gridItems,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
