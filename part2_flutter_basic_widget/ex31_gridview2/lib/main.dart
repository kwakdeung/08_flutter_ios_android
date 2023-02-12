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
      body: SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
             Container(
              height: 300, // 컨테이너로 감싸서 크기를 지정하면 스크롤 가능
              child: GridView.count(
                // scrollDirection: Axis.vertical,
                crossAxisCount: 3,      // 타일의 크기가 자동으로 계산된다.
                childAspectRatio: 1.5,  // 가로, 세로 비율을 정한다.
                children: List.generate(50, (index){
                  return Container(
                    child: Card(
                      color: Colors.blue,
                    ),
                  );
                }),
              ),
             ),
             Container(
               height: 200,
               child: GridView.count(
                 scrollDirection: Axis.horizontal,
                 crossAxisCount: 2 ,
                 children: List.generate(50, (index){
                   return Container(
                     child: Card(
                       color: Colors.amber,
                     ),
                   );
                 }),
               ),
             )
           ],            
          ),
       ),
      ),
    );
  }
}
