import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'MediaQuery Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyMediaQueryWidget(),
    );
  }
}

class MyMediaQueryWidget extends StatelessWidget {
  const MyMediaQueryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    if (screenSize.width > 600) {
      // Two Column
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'You can fit two columns here!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Screen Width: ${MediaQuery.of(context).size.width}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Text(
            'Screen Height: ${MediaQuery.of(context).size.height}',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          Text(
            'Aspect Ratio: ${MediaQuery.of(context).size.aspectRatio}',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          Text(
            'Orientation: ${MediaQuery.of(context).orientation}',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'You can fit one column here!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Screen Width: ${MediaQuery.of(context).size.width}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Text(
            'Screen Height: ${MediaQuery.of(context).size.height}',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          Text(
            'Aspect Ratio: ${MediaQuery.of(context).size.aspectRatio}',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          Text(
            'Orientation: ${MediaQuery.of(context).orientation}',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
        ],
      );
    }
  }
}
