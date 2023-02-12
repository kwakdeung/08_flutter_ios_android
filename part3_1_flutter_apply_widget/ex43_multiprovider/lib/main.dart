import 'package:flutter/material.dart';
import 'package:ex43_multiprovider/data.dart';
import 'package:ex43_multiprovider/repo.dart';
import 'package:ex43_multiprovider/second.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Data()),
        ListenableProvider(create: (context) => Repo()),
      ],
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Provider"),
            ),
            body: Second()
        ),
      ),
    );
  }
}
