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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("hello world"),
          TextButton(
              onPressed: () {
                print("flat button clicked");
              },
              child: Text("Click")),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text("inside container"),
          )
        ],
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
