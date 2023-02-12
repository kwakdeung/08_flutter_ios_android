import 'package:flutter/material.dart';
import 'page2.dart';
import 'page3.dart';

class Page1 extends StatefulWidget {
  String data = '';
  
  Page1({Key? key, required this.data}) : super(key: key);

 

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(       
        title: const Text('Page 1'),
      ),
      body: Center(      
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('2페이지 추가',
                                style: TextStyle(fontSize: 24)),
              onPressed: () async {
                // var로 설정. String으로 받으면 에러가 발생
                var result = await Navigator.pushNamed(context, '/page2');                  
                print('result(from 2) : $result');
                setState(() {
                  widget.data = result as String;
                }); 
              },
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              child: const Text('3페이지 추가',
                                style: TextStyle(fontSize: 24)),
              onPressed: () async {
                await Navigator.pushNamed(
                  context, '/page3'
                ).then((result) {
                  print('result(from 3) : $result');
                  setState(() {
                    widget.data = result as String;
                  });                                 
                });
              },
            ),
            Text(widget.data, style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),      
    );
  }
}
