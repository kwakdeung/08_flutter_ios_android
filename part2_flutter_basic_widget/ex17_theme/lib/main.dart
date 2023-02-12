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
      // theme: ThemeData.dark(),
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.orange,
        // appBarTheme: const AppBarTheme(
        //   color: Colors.deepPurple,
        // )
        unselectedWidgetColor: Colors.green,  // 선택되지 않은 라디오 버튼 색깔
        scaffoldBackgroundColor: Colors.yellow[50],
        fontFamily: 'D2Coding',
        textTheme: const TextTheme(
          bodyText2: TextStyle(       // button
            fontSize: 30,
            height: 1.5,
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Theme Use'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); 
  }

  enum Fruit { apple, banana }

  class _MyHomePageState extends State<MyHomePage> {

    Fruit _myGroup = Fruit.banana;
    bool _chk1 = false;
    bool _chk2 = true;
  

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
            const Text(
              '디폴트 테마가 적용된 글자',
            ),
            TextButton(
              child: const Text('Text Button 0'),
              onPressed: 1!=2 ? null : () => print('aaa'),
            ),
            ElevatedButton(
              child: const Text('디폴트 테마 - 버튼 0',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {
                print('bbb');
              },
            ),
            ElevatedButton(
              child: const Text('글자색 변경 - 버튼 0',
                                style: TextStyle(fontSize: 24,
                                                  color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,

                shadowColor: Colors.red,
                elevation: 5,
                side: const BorderSide(color: Colors.red, width: 1),
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              onPressed: () {
                print('ccc');
              }
            ),

            RadioListTile <Fruit>(
              title: const Text('사과'),
              groupValue: _myGroup,
              value: Fruit.apple,
              onChanged: (value) {
                setState(() {
                  _myGroup = value!;
                  print(_myGroup);
                });
              },
            ),
            Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.indigo,
              ),
              child: RadioListTile <Fruit>(
                title: const Text('바나나'),
                groupValue: _myGroup,
                value: Fruit.banana,
                activeColor: Colors.pink,   // 체크되었을 때 색
                onChanged: (value) {
                  setState(() {
                    _myGroup = value!;
                    print(_myGroup);
                  });
                },
              ),
            ),

            Checkbox(
              value: _chk1,
              checkColor: Colors.pink,    // 체크되었을 때 마크의 색
              activeColor: Colors.green,  // 체크되었을 때 배경색
              // 노멀 상태의 배경색은 테마로 변경
              onChanged: (value) {
                setState(() {
                  _chk1 = value!;
                });
              },
            ),  
            Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.indigo,
              ),
              child: Checkbox(
                value: _chk2,
                checkColor: Colors.pink,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _chk2 = value!;
                  });
                },
              ),
            ),
            const TextField(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.thumb_up),
        label: const Text('Approve'),
        tooltip: 'Increment',
        backgroundColor: Colors.purple,
        onPressed: () {
          print('ddd');
        },
      ),
    );
  }
}
