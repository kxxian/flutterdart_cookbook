import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Expanded Widget Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyExtendedWidget(),
    );
  }
}

class DataItem {
  final String centerText;
  final double centerTextSize;

  DataItem({
    required this.centerText,
    required this.centerTextSize,
  });
}

class DataView {
  DataItem item = DataItem(
    centerText: 'Luxembourg',
    centerTextSize: 24,
  );
}

class MyExtendedWidget extends StatelessWidget {
  MyExtendedWidget({Key? key}) : super(key: key);

  final DataView data = DataView();

  @override
  Widget build(BuildContext context) {
    const String title = 'Expanded Widget Demo';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: data.item.centerText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: data.item.centerTextSize,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
