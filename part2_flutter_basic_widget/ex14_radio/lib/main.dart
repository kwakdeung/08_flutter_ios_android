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
      home: const MyHomePage(title: 'Radio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// enum은 클래스 내부에 선언할 수 없고, 상수는 소문자로...(자바와 다르다)
enum Fruit { apple, banana}

class _MyHomePageState extends State<MyHomePage> {
  
  Fruit _myGroup1 = Fruit.apple;  // 첫 번째 그룹 구분에 사용할 변수
  Fruit _myGroup2 = Fruit.banana; // 두 번째 그룹 구분에 사용할 변수

  bool _btn = true;
 
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
            ListTile(
              title: const Text('사과'),
              leading: Radio <Fruit>(
                groupValue: _myGroup1,
                value: Fruit.apple,
                onChanged: (Fruit? value) {
                  setState(() {
                    _myGroup1 = value!;
                    print(_myGroup1);
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('바나나'),
              leading: Radio <Fruit>(
                groupValue: _myGroup1,
                value: Fruit.banana,
                onChanged: (value) {
                  setState(() {
                    _myGroup1 = value!;
                    print(_myGroup1);
                  });
                },
              ),
            ),
            const SizedBox(height: 50), // 간단한 간격 조정

            RadioListTile <Fruit>(
              title: const Text('사과'),
              groupValue: _myGroup2,
              value: Fruit.apple,
              onChanged: (value) {
                setState(() {
                  _myGroup2 = value!;
                  print(_myGroup2);
                  _btn = true;
                });
              },
            ),

            RadioListTile <Fruit>(
              title: const Text('바나나'),
              groupValue: _myGroup2,
              value: Fruit.banana,
              activeColor:Colors.pink,
              // 노멀 상태의 배경색은 테마로 변경 : unselectedWidgetColor
              onChanged: (value) {
                setState(() {
                  _myGroup2 = value!;
                  print(_myGroup2);
                  _btn = false;
                });
              },
            ),
            const SizedBox(height: 50), // 간단한 간격 조정
            ElevatedButton(
              child: const Text('ElevatedButton',
                                style: TextStyle(fontSize: 24,
                                                color: Colors.white)),
              onPressed: _btn? _onClick1 : null,  // 함수 호출                                  
            ),
          ],
        ),
      ),      
    );
  }

  void _onClick1() {
    print('Radio 2 : $_myGroup2');
  }
}
