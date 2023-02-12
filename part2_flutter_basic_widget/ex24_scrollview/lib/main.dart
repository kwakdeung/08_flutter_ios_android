import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        child: Container(   // #3
          margin: EdgeInsets.all(0.0),
          padding: EdgeInsets.all(0.0),
          width: 300,     // 크기를 지정하지 않으면 부모의 크기
          height: 500,    // 크기를 지정하지 않으면 자식의 크기
                            // 화면 크기보다 자식이 크면 화면의 크기
          color: Colors.cyan,
          alignment: Alignment.topLeft,

          child: SingleChildScrollView(     // #2
            scrollDirection: Axis.vertical, // #2-1
            child: Column(         
              // mainAxisAlignment: MainAxisAlignment.center, // 의미 없다
              children: [
                Container(
                  width: double.infinity,     // like Match_parent in Android
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.amber[700],
                  child: Text('Entry A', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.amber[500],
                  child: Text('Entry B', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.amber[300],
                  child: Text('Entry c', style: TextStyle(fontSize: 30)),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.amber[100],
                  child: const Text('Entry d', style: TextStyle(fontSize: 30)),
                ),            
              ],
            ),
          ),
        ),
      ),      
    );
  }
}
