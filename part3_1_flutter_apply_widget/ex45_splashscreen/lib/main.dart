import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SplashScreen++'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      body: Center(        
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '안드로이드\nSplash Screen 적용',
              style: TextStyle(fontSize: 30.0,),
            ),           
          ],
        ),
      ),      
    );
  }
}
