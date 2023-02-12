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
        child: Container(
          color: Colors.red,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                  width: 280,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(child: const Text('Button'), onPressed: () {}),
                      // const SizedBox(height: 10, width: 10,),
                      Spacer(flex: 2,),
                      ElevatedButton(child: const Text('Button'), onPressed: () {}),
                      // const SizedBox(height: 10, width: 10,),
                      Spacer(flex: 1,),
                      ElevatedButton(child: const Text('Button'), onPressed: () {}),
                    ],
                  ),
                ),
              ),
               Expanded(
                 flex: 1,
                 child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  color: Colors.cyan,
                  width: 280,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(child: const Text('Button'), onPressed: () {}),
                      // const SizedBox(height: 10, width: 10,),
                      Spacer(flex: 2,),
                      ElevatedButton(child: const Text('Button'), onPressed: () {}),
                      // const SizedBox(height: 10, width: 10,),
                      Spacer(flex: 1,),
                      ElevatedButton(child: const Text('Button'), onPressed: () {}),
                    ],
                  ),
                         ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
