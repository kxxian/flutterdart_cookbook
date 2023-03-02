import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'LayoutBuilder';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  final String title = 'LayoutBuilder Example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return _buildTripleContainers();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth <= 800) {
          return _buildDoubleContainers();
        } else {
          return _buildSingleContainer();
        } // Restrict based on width
      }),
    );
  }

  Widget _buildSingleContainer() {
    return Center(
      child: Container(
        height: 400.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildDoubleContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.yellow,
          ),
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

  Widget _buildTripleContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.green,
          ),
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.green,
          ),
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
