import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      Provider<String>.value(value: '홍길동'),
      Provider<String>.value(value: '전우치'),
      Provider<int>.value(value: 20),    
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(        
          primarySwatch: Colors.blue,
        ),
        home: const Page1(),
      ),      
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  


  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {  
  String data = '';
  int number = 0;
  @override
  Widget build(BuildContext context) {
    // 데이터 사용 - 변경에 대한 알림 받기
    data = Provider.of<String>(context, listen: true);
    number = Provider.of<int>(context, listen: true);

    return Scaffold(
      appBar: AppBar(       
        title: Text('Page 1'),
      ),
      body: Center(       
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('2페이지 추가',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page2()),
                  );                
                },
              ),
            Text('$data - $number', style: const TextStyle(fontSize: 30)),                
          ],
        ),
      ),     
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {    
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        title: Text('Page 2'),
      ),
      body: Center(       
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('2페이지 제거',
                              style: TextStyle(fontSize: 24)),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
              ),                              
              onPressed: () {
                Navigator.pop(context);             
              },
            ),
            // 데이터 사용 - 데이터 변경이 일어나면
            // Builder에 지정된 익명함수가 호출되고 지정된 위젯만 제빌드된다.
            Consumer2<String, int>(
              builder: (context, data1, data2, child) {
                print("111111");
                return Text('$data1 - $data2',
                            style: const TextStyle(fontSize: 30));
              }
            ),
          ],
        ),
      ),      
    );
  }
}
