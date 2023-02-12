import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Text('Example Page'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example Title'),
        ),
        body: const Text('Example Page', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}