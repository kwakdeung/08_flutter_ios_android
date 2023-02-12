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
      home: const MyHomePage(title: 'ListView 4'),
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
    super.initState();

    persons = [];
    for (int i=0; i<15; i++) {
      persons.add(Person(i+21, '홍길동$i', true));
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(     
        title: Text(widget.title),
      ),
      body:
        // 3. ListView.separted를 사용해서 Lazy 하게 생성.
        //    아이템 사이의 구분자도 Lazy 하게 생성.
        ListView.separated(
          itemCount: persons.length,
          itemBuilder: (BuildContext context, int index) {
            return PersonTile(persons[index], index);
          },

          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.black,      // Colors.transparent
              height: 1,
              // thickness: 1.0,
            );
          },
        ),     
    );
  }
}
// 데이터로 사용할 클래스 ======================================================
class Person {
  int age;
  String name;
  bool isLeftHand;

  Person(this.age, this.name, this.isLeftHand);
}

// PersonTile 정의 =============================================================
class PersonTile extends StatelessWidget {
  final Person _person;
  final int index;

  PersonTile(this._person, this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[100],
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(0),
      ),
      child: InkWell(
        splashColor: Colors.blue,
        onTap: (){
          print('$index번 타일 클릭됨');
        },
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 150,
              child: Icon(
                Icons.account_box,
                size: 50.0,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _person.name,
                    style: TextStyle(
                      fontSize:  20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "'${_person.age}세'",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$index번 타일',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ElevatedButton(
                          child:const Text('ElevatedButton',
                                            style: TextStyle(fontSize: 24)),
                          onPressed: () => _onClick(index),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _onClick(int index) {
    print('$index 클릭됨');
  }
}
