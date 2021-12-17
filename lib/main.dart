import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './list2.dart';
import 'res/listData.dart';
import './gridview.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _pressTime = 0;
  var _questionIndex = 0;
  void _ansertQuestion() {
    if (_questionIndex >= 2) {
      setState(() {
        _questionIndex = 0;
      });
    } else {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    setState(() {
      _pressTime = _pressTime + 1;
    });
    print("Answer you!${_questionIndex}");
  }

  @override
  Widget build(BuildContext context) {
    // var testText = "We move under cover and we move as one";
    // var testText2 = "text";

    var question = [
      {
        'questionText': '喜歡的顏色',
        'answers': ['紅色', '黃色', '藍色']
      },
      {
        'questionText': '喜歡的動物',
        'answers': ['貓', '狗', '蛇']
      },
      {
        'questionText': '喜歡的天氣',
        'answers': ['晴天', '下雨', '陰天']
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text("my first code"),

              // backgroundColor: Color.fromRGBO(245, 146, 66, 1.0),
              backgroundColor: Colors.yellowAccent),
          body: GridViewTest()

          // SingleChildScrollView(
          //     child: Container(
          //   child: Column(
          //     children: [
          //       Container(
          //         child: Row(
          //           // crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             testList,
          //             Text("按了{$_pressTime次}"),
          //             Flexible(child: textSection),
          //           ],
          //         ),
          //         height: 300.0,
          //         width: 500.0,
          //         decoration: BoxDecoration(color: Colors.black12),
          //       ),
          //       Question(question[_questionIndex]['questionText'] as String),
          //       ...(question[_questionIndex]['answers'] as List<String>)
          //           .map((answers) => Answer(_ansertQuestion, answers))
          //           .toList(),
          //       testImage,
          //     ],
          //   ),
          // ))

          ),
    );
  }

  Widget textSection = Container(
    padding: EdgeInsets.all(40),
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        )),
    transform: Matrix4.rotationZ(0.3),
    child: const Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      overflow: TextOverflow.fade,
    ),
  );

  Widget testImage = Center(
      child: Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
    width: 300.0,
    child: Column(children: [
      Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
              image: NetworkImage("https://i.imgur.com/gfuppi7.jpeg")),
        ),
      ),
      Text("文字敘述"),
      Image.network(
        "https://i.imgur.com/gfuppi7.jpeg",
        width: 200.0,
        height: 200.0,
        fit: BoxFit.contain,
      ),
      Text("文字敘述"),
      Container(
          width: 150.0,
          height: 150.0,
          child: ClipOval(
            child: Image.network("https://i.imgur.com/gfuppi7.jpeg"),
          )),
      Text("文字敘述"),
    ]),
  ));
  Widget testList = Container();
}
