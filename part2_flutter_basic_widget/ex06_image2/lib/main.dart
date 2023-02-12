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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,  // Add
        crossAxisAlignment: CrossAxisAlignment.start, // Add
        children: [
          Image.asset(
            'assets/images/900.png',
            fit: BoxFit.fill,               // 사이즈만 지정하면 자동 설정됨
            alignment: Alignment.topLeft,
            width: 150.0,                   // 원래 사이즈가 비율대로 줄어 듬
          ),
          const SizedBox(height: 5,),
          Image.asset(
            'assets/images/900.png',
            fit:BoxFit.cover,     // 큰 쪽에 맞춤. 작은 쪽 잘림
            alignment: Alignment.centerLeft,
            width: 150.0,
            height: 100.0,
          ),
          const SizedBox(height: 5,),
          Image.asset(
            'assets/images/900.png',
            fit:BoxFit.fill,    // 사이즈에 맞춤. 이미지 형태에 변형 옴.
            alignment: Alignment.centerLeft,
            width: 150.0,
            height: 100.0,
          ),
          const SizedBox(height: 5,),
          Image.asset(
            'assets/images/900.png',
            fit:BoxFit.contain,  // 작은 쪽에 맞춤. 큰 쪽에 여백 남음
            alignment: Alignment.topLeft,
            width: 150.0,
            height: 100.0,
          ),
          const SizedBox(height: 5,),
          Image.asset(
            'assets/images/900.png',
            // fit:BoxFit.contain,
            alignment: Alignment.topLeft, // 큰 쪽인 오른쪽에 여백 남음
            width: 150.0,   // 사이즈를 둘 다 주면 fill 아니고
            height: 100.0,    // contain이 된다.
          ),
          const SizedBox(height: 5,),
          Image.asset(
            'assets/images/900.png',
            fit:BoxFit.none,              // 원래 크기. 화면 배율 영향 안 받음
            alignment: Alignment.topLeft, // 오른쪽, 아래쪽 잘림
            width: 320.0,
            height: 80.0,
            ),
        ],
      ),
     
    );
  }
}
