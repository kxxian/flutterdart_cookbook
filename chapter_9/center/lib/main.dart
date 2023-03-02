import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Center Widget Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyCenterWidget(),
    );
  }
}

class DataItem {
  final String appBarTitle;
  final String bodyTitle;

  DataItem({
    required this.appBarTitle,
    required this.bodyTitle,
  });
}

class DataView {
  DataItem item = DataItem(
    appBarTitle: 'Center Example',
    bodyTitle: 'Top Five Spoken Languages - 2023',
  );
}

class MyCenterWidget extends StatelessWidget {
  MyCenterWidget({Key? key}) : super(key: key);

  final DataView data = DataView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data.item.appBarTitle),
        ),
        body: Center(
          child: Text(
            data.item.bodyTitle,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.grey,
            ),
          ),
        ));
  }
}
