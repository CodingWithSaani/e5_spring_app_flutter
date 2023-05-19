import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      title: const Text("Hey App"),
      backgroundColor: Colors.blueGrey,
    ),
    body: Image(image: NetworkImage("https://quizizz.com/media/resource/gs/quizizz-media/quizzes/c9711c76-aacc-4532-9a6e-2adf37315a2d"),),
  )));
}
