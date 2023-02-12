import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';

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
      home: const MyHomePage(title: 'Firebase Core'),
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
  
  String name = '';

  FirebaseOptions get firebaseOptions => const FirebaseOptions(
    appId: '1:1070636147271:android:5ad5efe35fa2e18bf84762',
    apiKey: '',   
    projectId: 'flutter-exam-bd427',   
    messagingSenderId: '1070636147271',     // 프로젝트 번호
    );

  Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp();
    name = app.name;
    print('Initialized default app $app');
  }

  Future<void> initializeSecondary() async {
    name = 'myFcm';
    FirebaseApp app = await Firebase.initializeApp(
                                name: name,
                                options: firebaseOptions);

    print('Initialized $app');
  }

  // 현재는 하나이지만 여러 개를 사용할 경우 : FCM, Storage, Auth ...
  void apps() {
    final List<FirebaseApp> apps = Firebase.apps;
    print('Current initialized apps: $apps');
  }

  void options() {
    final FirebaseApp app = Firebase.app(name);
    final FirebaseOptions? options = app.options;
    print('Current options for app $name: $options');
  }

  Future<void> delete() async {
    final FirebaseApp app = Firebase.app(name);

    // await app.delete();
    print('App $name deleted');
  }
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      body: Center(        
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Initialize default app'),
              onPressed: initializeDefault,
            ),
            ElevatedButton(
              child: const Text('Initialize secondary app'),
              onPressed: initializeSecondary,
            ),
            ElevatedButton(
              child: const Text('Get apps'),
              onPressed:  apps,
            ),
            ElevatedButton(
              child: const Text('List options'),
              onPressed: options,
            ),            
          ],
        ),
      ),      
    );
  }
}
