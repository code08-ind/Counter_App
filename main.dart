// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text("Counter App"),
          ),
        ),
        backgroundColor: Colors.white,
        body: Count(),
      ),
    ),
  );
}

class Count extends StatefulWidget {
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 300.0, 20.0, 0.0),
            child: Text(
              'You Clicked The Button $count',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              child: Image(
                image: NetworkImage(
                    'https://img.icons8.com/cotton/2x/plus--v3.png'),
                width: 200.0,
                height: 200.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
