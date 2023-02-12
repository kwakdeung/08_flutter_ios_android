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
      home: const MyHomePage(title: 'Container'),
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
          children: [
            Container(
              // margin: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(left: 10, top: 10),
              padding: const EdgeInsets.all(0.0),
              color: Colors.yellow,
              // width: 300,    // 크기를 지정하지 않으면 부모의 크기
              height: 100,      // 크기를 지정하지 않으면 자식의 크기
              alignment: Alignment.topLeft, 
              child: const Text(
                '홍길동',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(80.0), // 자식과의 패딩으로 크기가
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Text(
                '전우치',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              width: 400,       // 크기를 지정하지 않으면 부모의 크기
              height: 100,      // 크기를 지정하지 않으면 자식의 크기
              alignment: Alignment.bottomRight,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.brown,
              ),
              child: const Text(
                '손오공',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Container(
              width: 100.0,
              height: 40.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/300x100.png')
                ),
              ),
              child: TextButton(
                child: const Text('',),
                onPressed: () => _onClick(1),
              ),
            ),

            Ink.image(
              image: const AssetImage('assets/images/300x100.png'),
              width: 100.0,
              height: 40.0,
              // fit: BoxFit.fill,
              child: InkWell(
                  // child: Text(''),
                  onTap: () => _onClick(2),
              ),
            ),  
          ],
        ),
      ),   
    );
  }

  void _onClick(int num) {
    print('Hello~ $num');
  }
}
