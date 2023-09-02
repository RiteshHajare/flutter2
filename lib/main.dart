import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is title'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 213, 150, 13),
      ),
      body: Center(
          child: IconButton(
        onPressed: () {
          print('icon button');
        },
        icon: Icon(Icons.alternate_email),
        color: Colors.amber,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('button pressed');
        },
        backgroundColor: Colors.deepOrangeAccent,
        child: const Text(
          'click',
        ),
      ),
    );
  }
}
