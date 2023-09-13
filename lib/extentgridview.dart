import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExtentGridViewDemo(),
    );
  }
}

class ExtentGridViewDemo extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent Demo'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0, // Maximum cross-axis extent for each item
        crossAxisSpacing: 10.0,    // Spacing between columns
        mainAxisSpacing: 10.0,     // Spacing between rows
        children: List.generate(
          items.length,
              (index) => CustomGridItem(item: items[index]),
        ),
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