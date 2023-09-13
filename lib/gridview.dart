import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GridViews(),
    );
  }
}
class GridViews extends StatelessWidget {
  const GridViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.teal[100],
                child:  Center(child:Text("One")) ,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.blue[100],
                child: const Text("two"),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.red[100],
                child: const Text("three"),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.yellow[100],
                child:  Center(child:Text("Four")),
              ),
            ],
            )

        );
    }
}