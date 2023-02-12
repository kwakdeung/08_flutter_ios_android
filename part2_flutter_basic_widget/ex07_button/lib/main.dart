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
      home: const MyHomePage(title: 'Button'),
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
            ElevatedButton(
              child: const Text('Button #1',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {   // 직접 구현
                print("첫 번째 버튼이 클릭됨")  ;
              },
            ),
            ElevatedButton(
              child: const Text('Button #2',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {   // 함수 호출
                _onClick();
              },                 
            ),
            ElevatedButton(
              child: const Text('Button #3',
                                style: TextStyle(fontSize: 24)),
              onPressed: () => _onClick(),    // 람다 형태로 함수 호출                 
            ),
            ElevatedButton(
              child: const Text('Button #4',
                                style: TextStyle(fontSize:24)),
              onPressed: _onClick,    // 함수 이름 대입
            ),
          ],
        ),
      ),
    );
  }

  void _onClick() {
    print("버튼이 클릭됨");
  }

}
