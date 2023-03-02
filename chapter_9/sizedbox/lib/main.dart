import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'SizedBox Widget Demo';

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 200,
        ),
        child: Column(
          children: const [
            MySizedBox(
              mySizedBoxTitle: 'Developer',
              mySizedBoxWidth: 200,
            ),
            MySizedBox(
              mySizedBoxTitle: 'Flutter Framework',
              mySizedBoxWidth: 300,
            ),
            MySizedBox(
              mySizedBoxTitle: 'Dart SDK',
              mySizedBoxWidth: 400,
            ),
          ],
        ),
      ),
    );
  }
}

class MySizedBox extends StatelessWidget {
  const MySizedBox({
    Key? key,
    required this.mySizedBoxTitle,
    required this.mySizedBoxWidth,
  }) : super(key: key);

  final String mySizedBoxTitle;
  final double mySizedBoxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mySizedBoxWidth,
      height: 100,
      child: Card(
        color: Colors.amber,
        child: Center(
          child: Text(mySizedBoxTitle),
        ),
      ),
    );
  }
}
