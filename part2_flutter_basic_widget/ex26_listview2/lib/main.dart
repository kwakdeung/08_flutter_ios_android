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
  
  late List<Person> persons;

  @override
  void initState() {
    super.initState();  // must call in 2.0 ~

    persons = [];
    for (int i=0; i<15; i++) {
      persons.add(Person(i+21, '홍길동$i',true));
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(       
        title: Text(widget.title),
      ),
      body: 
        // 1. 명시적으로 children으로 List를 넘겨서 생성
        // ListView(
        //   padding: const EdgeInsets.all(8),
        //   children: getMyList(),
        // ),   

        // 2. ListView.builder를 사용해서 Lazy 하게 생성
        // index를 이용하여 플러터가 알아서 필요한만큼 리스트를 생성한다.   
        ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: persons.length,
          itemBuilder: (BuildContext context, int index) {
            return PersonTile(persons[index]);
          }
        ),
      );
    }

  List<Widget> getMyList() {
      
    // 클래스로 미리 만들어 놓은 타일을 객체로 만들어 리스트 생성
    List<Widget> myList = [];
    for (int i=0; i<persons.length; i++) {
      PersonTile personTile = new PersonTile(persons[i]);
      myList.add(personTile);
    }

      return myList;
    } 
    
    
  }

// 데이터로 사용할 클래스
class Person {
  int age;
  String name;
  bool isLeftHand;

  Person(this.age, this.name, this.isLeftHand);
}
// PersonTile 정의 ============================================================
class PersonTile extends StatelessWidget {
  final Person _person;

  PersonTile(this._person);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(_person.name),
      subtitle: Text("${_person.age}세"),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        print(_person.name);
      },
    );
  }
}
