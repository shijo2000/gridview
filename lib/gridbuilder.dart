import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridBuilderDemo(),
    );
  }
}

class GridBuilderDemo extends StatelessWidget {
  final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView.builder Demo'),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Center(
                  child: Text(items[index]),
                ),
              );
            },
            ),
        );
    }
}