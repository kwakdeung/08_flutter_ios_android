import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      // home: Page1(data: '시작',),   
      initialRoute: '/page1',
      routes: {
        '/page1': (context) => Page1(data: '시작'),
        '/page2': (context) => Page2(data: '1페이지에서 보냄 (1->2)'),
        '/page3': (context) => Page3(data: '1페이지에서 보냄 (1->3)'),
      },      
    );
  }
}

