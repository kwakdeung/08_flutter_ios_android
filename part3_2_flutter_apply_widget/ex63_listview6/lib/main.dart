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
      home: const MyHomePage(title: 'ListView 6'),
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
  int nMax = 5;
  List<int> myList = [0, 1, 2, 3, 4]; // 데이터베이스와 서버 연결, 동기화할 때 사용
  
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
              child: const Text('Print Items',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {
                print(myList);
              },                                
            ),
            ElevatedButton(
              child: const Text('Add in Items',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {
                addItem();
              },
            ),
            ElevatedButton(
              child: const Text('Delete from Items',
                                style: TextStyle(fontSize: 24)),
              onPressed: () {
                removeItem();
              },
            ),
            Expanded( // <-- 이게 핵심!!!
              child: myListView()
            ),                       
          ],
        ),
      ),      
    );
  }

  Widget myListView() {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    // 항목을 오래 누르면 이동 가능하다.
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: <Widget>[
        // 아이템 리스트 구성
        for (int index = 0; index < myList.length; index++)
          ListTile(
            key: Key('$index'),
            tileColor: myList[index].isOdd ? oddItemColor : evenItemColor,
            title: Text('Item ${myList[index]}'),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        // 순서 변경
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = myList.removeAt(oldIndex);
          myList.insert(newIndex, item);
        });
      },
    );
  }
  void addItem() {
    setState(() {
      myList.add(nMax);
    });
    nMax++;
  }
  void removeItem() {
    setState(() {
      myList.removeLast();
    });
    nMax--;
  }
}
