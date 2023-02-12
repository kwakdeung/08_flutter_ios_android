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
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // ListTile 클릭시 리플 효과 색상 변경
        splashColor: Colors.red,
        // 불투명한 색상보다 스플래시 효과를 더 강조한다.
        highlightColor: Colors.black.withOpacity(.5),
      ),
      home: MyHomePage(title: 'ListView Widget 1'),
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
  var _checkboxValue = false;
  var _radioValue = 0;
  var _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        //   children: [
        //     ListTile(
        //       leading: FlutterLogo(
        //         size: 50.0,
        //       ),
        //       title: Text('Basic #1'),
        //       subtitle: Text('타이틀과 서브 타이틀로만 구성'),
        //       trailing: Icon(Icons.more_vert),
        //       onTap: () {
        //         print('Basic #1');
        //       },
        //     ),
        //   ],
        // children: getMyList1(),
        padding: const EdgeInsets.all(8),
        // 1. 명시적으로 children으로 List를 넘겨서 생성
        children: getMyList(),
      ),
    );
  }
  // 메서드의 리턴값으로 scaffold의 body 구성
  // List<Widget> getMyList1() {
  //   List<Widget> myList = [
  //      ListTile(
  //         leading: FlutterLogo(
  //           size: 50.0,
  //         ),
  //         title: Text('Basic #1'),
  //         subtitle: Text('타이틀과 서브 타이틀로만 구성'),
  //         trailing: Icon(Icons.more_vert),
  //         onTap: () {
  //           print('Basic #1');
  //         },
  //       ),
  //       Divider(
  //         color: Colors.black,
  //         height: 5,
  //         // indent: 10,
  //         // endIndent: 10,
  //       ),
  //   ];
  //   return myList;
  // }
  // 메서드의 리턴값으로 scaffold의 body 구성
//   List<Widget> getMyList2() {
//     // 이런 데이터가 있다 치고~
//     List<Person> persons = [];
//     for (int i=0; i<15; i++) {
//       persons.add(Person(i+21, '홍길동$i', true));
//     }

//     // 데이터를 이용하여 리스트 생성
//     List<Widget> myList = [];
//     for (int i=0; i<persons.length; i++) {
//       Widget wid = ListTile(
//         leading: FlutterLogo(
//           size: 50.0,
//         ),
//         title: Text('Basic #$i'),
//         subtitle: Text('${persons[i].name} - ${persons[i].age}'),
//         trailing: Icon(Icons.more_vert),
//         onTap: () {
//           print('Basic #$i');
//         },
//       );
//       myList.add(wid);
//     }
//     return myList;
//   }
// }

  List<Widget> getMyList() {
    List<Widget> myList = [
      Container(
        // width: double.infinity, // like Match_parent in Android
        height: 100,
        alignment: Alignment.center,
        color: Colors.amber[600],
        child: Text('onTab 이 없어 클릭 안됨', style: TextStyle(fontSize: 30)),
      ),

      ListTile(
        title: Text('Basic #1'),
        subtitle: Text('타이틀과 서브 타이틀로만 구성'),
        trailing: Icon(Icons.more_vert),
        onTap: () {
          print('Basic #1');
        },
      ),
      Divider(
        color: Colors.black,
        height: 5,
        // indent: 10,
        // endIndent: 10,
      ),
      ListTile(
        leading: Icon(
          Icons.account_box,
          size: 50.0,
        ),
        title: Text('Baisc #3'),
        subtitle: Text('기본형의 모든 요소 사용'),
        trailing: Icon(Icons.arrow_back_ios),
        onTap: () {
          print('Basic #3');
        },
      ),
      Divider(
        color: Colors.black,
        height: 5,
      ),
      ListTile(
        leading: Icon(
          Icons.account_box,
          size: 50.0,
        ),
        title: Text('Basic #3 - isThreeLine: false'),
        subtitle: Text('내용이 길면 다음 줄로 내용이 너어간다. 그러나 공간이 확장'),
        trailing: Icon(Icons.arrow_back_ios),
        onTap: () {
          print('Basic #3 - isThreeLine: false');
        },
      ),
      Divider(
        color: Colors.black,
        height: 5,
      ),
      CheckboxListTile(
        value: _checkboxValue,
        title: Text('CheckBox ListTile'),
        secondary:
            _checkboxValue ? Icon(Icons.thumb_up) : Icon(Icons.thumb_down),
        onChanged: (bool? value) {
          setState(() {
            _checkboxValue = value!;
          });
          print('CheckBox ListTile');
        },
      ),
      Divider(
        color: Colors.black,
        height: 5,
      ),
      RadioListTile(
        title: Text('GOOD'),
        groupValue: _radioValue,
        value: 1,
        selected: true,
        onChanged: (int? value) {
          setState(() {
            _radioValue = value!;
          });
        },
      ),
      RadioListTile(
        title: Text('NOT GOOD'),
        groupValue: _radioValue,
        value: 2,
        onChanged: (int? value) {
          setState(() {
            _radioValue = value!;
          });
        },
      ),
      Divider(
        color: Colors.black,
        height: 5,
      ),
      SwitchListTile(
        title: Text('Switch ListTile'),
        subtitle: Text(_switchValue ? 'on' : 'off'),
        value: _switchValue,
        onChanged: (bool value) {
          setState(() {
            _switchValue = value;
          });
          print('Switch ListTile');
        },
        secondary: Icon(Icons.lightbulb_outline),
      ),
      // 클릭시 리플 효과 표시 됨 (Card -> ListTile)
      Card(
        color: Colors.amber[100],
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(0),
        ),
        child: ListTile(
          // contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          leading: Icon(
            Icons.account_box,
            size: 50.0,
          ),
          title: Text(
            'Card -> ListTile',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
          subtitle: Text('클릭시 리플 효과 표시 됨'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('fff');
          },
        ),
      ),

      // =======================================================================
      // 클릭시 리플 효과 표시 됨 (Card -> InkWell)
      Card(
        color: Colors.amber[100],
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(0),
        ),
        child: InkWell(
          // splashColor: Colors.blue,
          onTap: () {
            print('ggg');
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
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Title",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Population: 22 / 06 / 2020',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Icon(Icons.data_usage),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // myList.add(wid);
    ];
    return myList;
  }
}

// 데이터로 사용할 클래스(자바DTO, Bin)=========================================
class Person {
  int age;
  String name;
  bool isLeftHand;

  Person(this.age, this.name, this.isLeftHand);
}
