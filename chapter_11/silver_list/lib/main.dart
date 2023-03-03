import 'package:flutter/material.dart';

class CarItem {
  final String title;
  final String subtitle;
  final String url;

  CarItem({
    required this.title,
    required this.subtitle,
    required this.url,
  });
}

class ListDataItems {
  final List<CarItem> carItems = [
    CarItem(
      title: '911 Cabriolet',
      subtitle: '911 Carrera Cabriolet Porsche',
      url: 'https://oreil.ly/m3OXC',
    ),
    CarItem(
      title: '718 Spyder',
      subtitle: '718 Sypder Porsche',
      url: 'https://oreil.ly/hca-6',
    ),
    CarItem(
      title: '718 Boxter T',
      subtitle: '718 Boxter T Porsche',
      url: 'https://oreil.ly/Ws4EX',
    ),
    CarItem(
      title: 'Cayenne',
      subtitle: 'Cayenne S Porsche',
      url: 'https://oreil.ly/gwvnL',
    ),
    CarItem(
      title: '911 Cabriolet',
      subtitle: '911 Carrera Cabriolet Porsche',
      url: 'https://oreil.ly/m3OXC',
    ),
    CarItem(
      title: '718 Spyder',
      subtitle: '718 Sypder Porsche',
      url: 'https://oreil.ly/hca-6',
    ),
    CarItem(
      title: '718 Boxter T',
      subtitle: '718 Boxter T Porsche',
      url: 'https://oreil.ly/Ws4EX',
    ),
    CarItem(
      title: 'Cayenne',
      subtitle: 'Cayenne S Porsche',
      url: 'https://oreil.ly/gwvnL',
    ),
    CarItem(
      title: '911 Cabriolet',
      subtitle: '911 Carrera Cabriolet Porsche',
      url: 'https://oreil.ly/m3OXC',
    ),
    CarItem(
      title: '718 Spyder',
      subtitle: '718 Sypder Porsche',
      url: 'https://oreil.ly/hca-6',
    ),
    CarItem(
      title: '718 Boxter T',
      subtitle: '718 Boxter T Porsche',
      url: 'https://oreil.ly/Ws4EX',
    ),
    CarItem(
      title: 'Cayenne',
      subtitle: 'Cayenne S Porsche',
      url: 'https://oreil.ly/gwvnL',
    ),
  ];
  ListDataItems();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const _title = 'SilverList Widget Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: _title,
      home: const MyHome(
        title: 'Flutter and Dart Cookbook',
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  final String title;

  const MyHome({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('MyAwesomeApp'),
            expandedHeight: 300,
            collapsedHeight: 150,
            floating: false,
          ),
          MySilverList(),
        ],
      ),
    );
  }
}

class MySilverList extends StatelessWidget {
  MySilverList({Key? key}) : super(key: key);

  final ListDataItems item = ListDataItems();

  @override
  Widget build(BuildContext context) {
    return SliverList(
      // Use a delegate to build items as they're scrolled on-screen.
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              item.carItems[index].url,
            ),
          ),
          title: Text(item.carItems[index].title),
          subtitle: Text(item.carItems[index].subtitle),
        ),
        // Builds 1000 ListTiles
        childCount: item.carItems.length,
      ),
    );
  }
}
