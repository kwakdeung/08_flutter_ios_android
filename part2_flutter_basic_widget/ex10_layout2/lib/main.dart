

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
      body: SafeArea(
       child: Column(
          children: [
            Expanded(              
              flex: 3,
              child: 
              Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [const Text('123456',
                    style: TextStyle(fontSize: 50, color: Colors.white),),
                  ],
                ),
              ),
            ),
            Expanded(            
              child: Row(children: [ 
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('C', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('+/-', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('%', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.orange),child: const Text('/', style:TextStyle(fontSize: 30, color:Colors.white)), onPressed: () {}),),
              ],         
            ),
          ),
          Expanded(
              child: Row(children: [           
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('7', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('8', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('9', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.orange),child: const Text('*', style:TextStyle(fontSize: 30, color:Colors.white)), onPressed: () {}),),],         
            ),
          ),
          Expanded(
              child: Row(children: [
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('4', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('5', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('6', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.orange),child: const Text('-', style:TextStyle(fontSize: 30, color:Colors.white)), onPressed: () {}),),
              ],         
            ),
          ),
          Expanded(
              child: Row(children: [
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('1', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('2', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('3', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.orange),child: const Text('+', style:TextStyle(fontSize: 30, color:Colors.white)), onPressed: () {}),),
                                          
              ],         
            ),
          ),
          Expanded(
              child: Row(children: [              
              SizedBox(width: 180, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('0', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),              
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.grey),child: const Text('.', style:TextStyle(fontSize: 30, color:Colors.black)), onPressed: () {}),),
              SizedBox(width: 90, height:100, child: ElevatedButton (style: ElevatedButton.styleFrom(primary: Colors.orange),child: const Text('=', style:TextStyle(fontSize: 30, color:Colors.white)), onPressed: () {}),),
                    
              
              ],         
            ),
          ), 
            
          ]
        ),  
      ),
    );     
    
  }
}
