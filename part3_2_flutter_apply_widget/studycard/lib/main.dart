import 'package:flutter/material.dart';
import 'flippable_box.dart';

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
      home: const MyHomePage(title: 'StudyCard'),
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
  
  bool _isFlipped = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      body: Center(        
         child: GestureDetector(
            onTap: () => setState(() => _isFlipped = !_isFlipped),
            child: FlippableBox(
              front: _buildCard("Front!", 250, 200, Colors.green),
              back: _buildCard("Back...", 250, 200, Colors.red),
              flipVt: true,
              isFlipped: _isFlipped,
            ),
          ),
        ),      // This trailing comma makes auto-formatting nicer for build methods.
      );
    }

  Container _buildCard(String label, double width, double height, Color color) {
    return Container(
      color: color,
      width: width,
      height: height,
      child: Center(
        child: Text(label, style: TextStyle(fontSize: 32)),
      ),
    );
  }
}