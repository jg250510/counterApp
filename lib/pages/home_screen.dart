import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.5,
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Counter Clicks',style: TextStyle(fontSize: 20)),
            Text('7'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: const Icon(Icons.add),
      ),
    );
  }
}