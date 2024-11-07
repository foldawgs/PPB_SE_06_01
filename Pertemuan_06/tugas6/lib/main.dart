import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Dialog Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Item> items = [
    Item(
      title: 'Native App',
      detail: 'Native App Android, iOS, Web Javascript, Dart',
      color: Colors.red,
    ),
    Item(
      title: 'Hybrid App',
      detail: 'Hybrid App Android, iOS, Web Javascript, Dart',
      color: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: items[index].color,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  items[index].title,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            onTap: () {
              _showDetailDialog(context, items[index]);
            },
          );
        },
      ),
    );
  }

  void _showDetailDialog(BuildContext context, Item item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.detail, style: TextStyle(fontSize: 18)),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class Item {
  final String title;
  final String detail;
  final Color color;

  Item({required this.title, required this.detail, required this.color});
}
