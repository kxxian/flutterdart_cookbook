import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Container Widget Demo';

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyContainerWidget(),
    );
  }
}

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Container Widget Demo';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,
          color: Colors.red[300],
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
