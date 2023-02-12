import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';    // utf6.decode

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
      home: const MyHomePage(title: 'Http_Exam*'),
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
              child: const Text('Http (Get)',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {
                _getRequest();
              },                  
            ),
            ElevatedButton(
              child: const Text('Http (post)',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {
                _postRequest();
              }                                
            )           
          ],
        ),
      ),     
    );
  }

  void _getRequest() async {
    // var url = Uri.parse('https://example.com/whatsit/create');
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
    http.Response response = await http.get(
        url,
        headers: {"Accept": "application/json"}
    );

    var statusCode = response.statusCode;
    var responseHeaders = response.headers;
    var responseBody = utf8.decode(response.bodyBytes); // for 한글
    // $response.body'
    print("statusCode: $statusCode");
    // print("responseHeaders: $responseHeaders");
    print("responseBody: $responseBody");
  }

  // 일반적인 form data 형식으로 파라미터를 보내는 코드
  void _postRequest() async {
    var url = Uri.parse('http://example.com/login');
    http.Response response = await http.post(
      url,
      headers: {
        'Content-Type' : 'application/x-www-form-urlencoded',        
      },
      body: {
          'user_id' : 'user_id_value',
          'user_pwd' : 'user_pwd_value'
      },
  );

  var statusCode = response.statusCode;
  var responseHeaders = response.headers;
  var responseBody = utf8.decode(response.bodyBytes); // for 한글

  print("statusCode: $statusCode");
  // print("responseHeaders: $responseHeaders");
  print("responseBody: $responseBody");
  }
}
