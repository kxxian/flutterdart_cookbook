import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
    );
  }
}

class DataItem {
  final String appBarTitle;
  final String bottomNaviBarTitle;
  final String cardTitle;

  DataItem({
    required this.appBarTitle,
    required this.bottomNaviBarTitle,
    required this.cardTitle,
  });
}

class DataView {
  final DataItem item = DataItem(
    appBarTitle: 'Scaffold Example',
    bottomNaviBarTitle: 'bottomNavigationBar',
    cardTitle: 'Top Level Card',
  );
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  final DataView data = DataView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.item.appBarTitle),
      ),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 300,
          child: Center(
            child: Text(data.item.bottomNaviBarTitle),
          ),
        ),
      ),
      body: _buildCardWidget(),
    );
  }
}

Widget _buildCardWidget() {
  final DataView data = DataView();

  return SizedBox(
    height: 200,
    child: Card(
      child: Center(
        child: Text(data.item.cardTitle),
      ),
    ),
  );
}
