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
      home: const MyHomePage(title: 'Checkbox, Switch'),
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
  bool _chk1 = false;
  bool? _chk2 = false;
  bool _chk3 = false;
  

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
            Checkbox(
              value: _chk1,
              onChanged: (bool? value) {
                setState(() {
                  _chk1 = value!;
                });
                print('Checkbox1 : $_chk1');
              }
            ),
            Checkbox(
              value: _chk2,
              checkColor: Colors.pink,    // 체크되었을 때 마크의 색
              activeColor: Colors.green,  // 체크되었을 때 배경색
              // 노멀 상태의 배경색은 테마로 변경
              onChanged: (value) {
                setState(() {
                  _chk2 = value;
                });
                print('Checkbox2 : $_chk2');
              }
            ),
            Switch(
              value: _chk3,
              activeColor: Colors.red,
              activeTrackColor: Colors.cyan,
              inactiveThumbColor: Colors.lightGreen,
              inactiveTrackColor: Colors.lightGreen,
              onChanged: (value) {
                setState(() {
                  _chk3 = value;
                });
                print('Switch : $_chk3');
              }
            )            
          ],
        ),
      ),     
    );
  }
}
