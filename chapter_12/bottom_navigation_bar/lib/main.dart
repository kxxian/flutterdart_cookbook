import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'Bottom Navigtion Widget';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyBottomNavigationWidget(),
    );
  }
}

final List<Widget> _navigationPages = [
  const Center(child: Text('Page: Home')),
  const Center(child: Text('Page: News')),
  const Center(child: Text('Demo: Favorites')),
  const Center(child: Text('Demo: List')),
];

class MyBottomNavigationWidget extends StatefulWidget {
  const MyBottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationWidget> createState() =>
      _MyBottomNavigationWidgetState();
}

class _MyBottomNavigationWidgetState extends State<MyBottomNavigationWidget> {
  final appTitle = 'Bottom Navigtion Widget';
  int _itemSelected = 0;

  void _bottomBarNavigation(int index) {
    setState(() {
      _itemSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: _navigationPages[_itemSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemSelected,
        onTap: _bottomBarNavigation,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
      ),
    );
  }
}
