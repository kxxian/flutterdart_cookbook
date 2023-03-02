import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'RichText Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyHome(),
    );
  }
}

double screenHeight = 0.0;

class DataItem {
  final String textSpanTitle1;
  final double textSpanSize1;
  final String textSpanTitle2;
  final double textSpanSize2;

  DataItem({
    required this.textSpanTitle1,
    required this.textSpanSize1,
    required this.textSpanTitle2,
    required this.textSpanSize2,
  });
}

class DataView {
  DataItem item = DataItem(
    textSpanTitle1: 'Hello ',
    textSpanSize1: 24,
    textSpanTitle2: 'Luxembourg',
    textSpanSize2: 32,
  );
}

class MyHome extends StatelessWidget {
  MyHome({Key? key}) : super(key: key);

  final DataView data = DataView();

  final String title = 'RichText Demo';

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height / 3;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: data.item.textSpanTitle1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: data.item.textSpanSize1,
                  color: Colors.indigo,
                ),
              ),
              TextSpan(
                text: data.item.textSpanTitle2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: data.item.textSpanSize2,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
