import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomGridViewDemo(),
    );
  }
}

class CustomGridViewDemo extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom GridView'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomGridItem(item: items[index]);
        },
      ),
    );
  }
}

class CustomGridItem extends StatelessWidget {
  final String item;

  CustomGridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        margin: EdgeInsets.all(10),
        child: Center(
            child: Text(
              item,
              style: TextStyle(fontSize: 18),
            ),
            ),
        );
    }
}