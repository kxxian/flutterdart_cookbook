import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Column Widget Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyColumnWidget(),
    );
  }
}

class DataItem {
  final String centerTitle;
  final String columnTitle;

  DataItem({
    required this.centerTitle,
    required this.columnTitle,
  });
}

class DataView {
  DataItem item = DataItem(
    centerTitle: 'Top Five Spoken Languages - 2023',
    columnTitle: 'Column Widget Demo',
  );
}

class MyColumnWidget extends StatelessWidget {
  MyColumnWidget({Key? key}) : super(key: key);

  final DataView data = DataView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.item.columnTitle),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              data.item.centerTitle,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MyRowWidget(
                  rowWidth: 100.0,
                  rowTitle: 'English',
                  containerWidth: 600.0,
                  containerTitle: '1.3 Billion',
                  textFontSize: 18,
                ),
                SizedBox(height: 10.0),
                MyRowWidget(
                  rowWidth: 100.0,
                  rowTitle: 'Mandarin',
                  containerWidth: 550.0,
                  containerTitle: '1 Billion',
                  textFontSize: 18,
                ),
                SizedBox(height: 10.0),
                MyRowWidget(
                  rowWidth: 100.0,
                  rowTitle: 'Hindi',
                  containerWidth: 300.0,
                  containerTitle: '600 Million',
                  textFontSize: 18,
                ),
                SizedBox(height: 10.0),
                MyRowWidget(
                  rowWidth: 100.0,
                  rowTitle: 'Spanish',
                  containerWidth: 280.0,
                  containerTitle: '540 Million',
                  textFontSize: 18,
                ),
                SizedBox(height: 10.0),
                MyRowWidget(
                  rowWidth: 100.0,
                  rowTitle: 'Arabic',
                  containerWidth: 140.0,
                  containerTitle: '270 Million',
                  textFontSize: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyRowWidget extends StatelessWidget {
  const MyRowWidget({
    Key? key,
    required this.rowTitle,
    required this.rowWidth,
    required this.containerWidth,
    required this.containerTitle,
    required this.textFontSize,
  }) : super(key: key);

  final String rowTitle;
  final double rowWidth;
  final double containerWidth;
  final String containerTitle;
  final double textFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100.0,
          child: Text(rowTitle),
        ),
        Container(
          width: containerWidth,
          color: rowTitle == 'English'
              ? Colors.green
              : rowTitle == 'Mandarin'
                  ? Colors.orange
                  : rowTitle == 'Hindi'
                      ? Colors.pink
                      : rowTitle == 'Spanish'
                          ? Colors.cyan
                          : rowTitle == 'Arabic'
                              ? Colors.deepPurple
                              : Colors.transparent,
          child: Center(
            child: Text(
              containerTitle,
              style: TextStyle(
                fontSize: textFontSize,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
