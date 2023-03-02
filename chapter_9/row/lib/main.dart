import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Row Widget Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyRowWidget(),
    );
  }
}

class MyRowWidget extends StatelessWidget {
  const MyRowWidget({Key? key}) : super(key: key);

  final String title = 'Row Widget Example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          MyContainerWidget(
            containerWidth: 5,
          ),
          MyExpandedWidget(
            expandedHeight: 50,
            expandedWidth: 200,
            expandedText: '50',
          ),
          MyExpandedWidget(
            expandedHeight: 100,
            expandedWidth: 200,
            expandedText: '100',
          ),
          MyExpandedWidget(
            expandedHeight: 200,
            expandedWidth: 200,
            expandedText: '200',
          ),
          MyContainerWidget(
            containerWidth: 5,
          ),
        ],
      ),
    );
  }
}

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({
    Key? key,
    required this.containerWidth,
  }) : super(key: key);

  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      color: Colors.transparent,
    );
  }
}

class MyExpandedWidget extends StatelessWidget {
  const MyExpandedWidget({
    Key? key,
    required this.expandedHeight,
    required this.expandedWidth,
    required this.expandedText,
  }) : super(key: key);

  final double expandedHeight;
  final double expandedWidth;
  final String expandedText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: expandedHeight,
        width: expandedHeight,
        color: expandedText == '50'
            ? Colors.red
            : expandedText == '100'
                ? Colors.green
                : expandedText == '200'
                    ? Colors.orange
                    : Colors.transparent,
        child: Center(
          child: Text(expandedText),
        ),
      ),
    );
  }
}
