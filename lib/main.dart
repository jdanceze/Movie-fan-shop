import 'package:flutter/material.dart';

import './shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Fan',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(appBar: AppBar(
        title: Text('Movie Fan'),
      ),
          body: Shop()),
    );
  }
}
