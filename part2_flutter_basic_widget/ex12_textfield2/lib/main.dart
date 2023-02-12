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
        child: Column(        
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '내용을 입력하세요.',
              style: TextStyle( fontSize: 30.0 ),
            ),
            Expanded(
              child: TextField(
                maxLength: 10,
                maxLines: 30,
                decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent,
                                          width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                // labelText: '내용 입력',
                // counterText: "", // maxLength 를 감춘다.
                counterStyle: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.red,
                              ),
                ),
                onChanged: (text) {
                  print(text);
                },
                onSubmitted: (text) {
                  print('Submitted : $text');
                },
              ),
            ),
            ElevatedButton(
              child: const Text('키보드 내리기',
                                style: TextStyle(fontSize: 24,
                                                  color: Colors.white)),
              onPressed: () => _onClick(),
            ),
          ],
        ),
      ),
      
    );
  }

  void _onClick() {
    FocusScope.of(context).unfocus();
  }
}
