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
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 50, 30, 40),
        margin: EdgeInsets.all(40),
        color: Colors.grey[400],
        child: Text('hello'),
      ),
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
