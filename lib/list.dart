import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:udemy_first_app/res/listData.dart';

class TestList extends StatelessWidget {
  // 自定義方法
  List<Widget> _getDate() {
    var temp = listData.map((e) => Container(
        child: ListTile(
          title: Text(e["title"]),
          leading: Image.network(e["image"]),
          subtitle: Text("\$ ${e["price"].toString()}"),
        ),
        width: 180,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0)));

    // List<Widget>list =new List() 過時
    // var list = <Widget>[];

    // for (var i = 0; i < 20; i++) {
    //   list.add(Container(
    //       child: ListTile(
    //         title: Text("我是標題${math.Random().nextDouble() * 10}"),
    //         leading: Icon(Icons.ac_unit_outlined),
    //       ),
    //       width: 180,
    //       color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
    //           .withOpacity(1.0)));
    // }

    return temp.toList();
    // return [
    //   Container(
    //       child: ListTile(
    //         title: Text("我是標題1"),
    //         leading: Icon(Icons.ac_unit_outlined),
    //       ),
    //       width: 180,
    //       color: Colors.pink),
    //   Container(
    //       child: ListTile(
    //         title: Text("我是標題2"),
    //         leading: Icon(Icons.sailing_rounded),
    //       ),
    //       width: 180,
    //       color: Colors.amber),
    //   Container(
    //       child: ListTile(
    //         title: Text("我是標題3"),
    //         leading: Icon(Icons.holiday_village),
    //       ),
    //       width: 180,
    //       color: Colors.amber[300]),
    //   Container(
    //       child: ListTile(
    //         title: Text("我是標題1"),
    //         leading: Icon(Icons.ac_unit_outlined),
    //       ),
    //       width: 180,
    //       color: Colors.pink),
    //   Container(
    //       child: ListTile(
    //         title: Text("我是標題2"),
    //         leading: Icon(Icons.sailing_rounded),
    //       ),
    //       width: 180,
    //       color: Colors.amber),
    //   Container(
    //       child: ListTile(
    //         title: Text("我是標題3"),
    //         leading: Icon(Icons.holiday_village),
    //       ),
    //       width: 180,
    //       color: Colors.amber[300]),
    // ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: this._getDate(),

          //  [
          //   Container(
          //       child: ListTile(
          //         title: Text("我是標題1"),
          //         leading: Icon(Icons.ac_unit_outlined),
          //       ),
          //       width: 180,
          //       color: Colors.pink),
          //   Container(
          //       child: ListTile(
          //         title: Text("我是標題2"),
          //         leading: Icon(Icons.sailing_rounded),
          //       ),
          //       width: 180,
          //       color: Colors.amber),
          //   Container(
          //       child: ListTile(
          //         title: Text("我是標題3"),
          //         leading: Icon(Icons.holiday_village),
          //       ),
          //       width: 180,
          //       color: Colors.amber[300]),
          //   Container(
          //       child: ListTile(
          //         title: Text("我是標題4"),
          //         leading: Icon(Icons.dangerous_outlined),
          //       ),
          //       width: 180,
          //       color: Colors.green[400]),
          // ],
        ));
  }
}
