import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'res/listData.dart';

import 'package:udemy_first_app/res/listData.dart';

class TestList extends StatelessWidget {
  var list = <Widget>[];

  // TestList() {
  //   for (var i = 0; i < 10000; i++) {
  //     this.list.add(Container(
  //         child: ListTile(
  //           title: Text("我是標題${math.Random().nextDouble() * 10}"),
  //           leading: Icon(Icons.ac_unit_outlined),
  //         ),
  //         width: 180,
  //         color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
  //             .withOpacity(1.0)));
  //   }
  // }
  // 自定義方法

  Widget _getListDate(context, index) {
    return (Container(
        child: ListTile(
          title: Text(listData[index]["title"]),
          leading: Image.network(listData[index]["image"],
              width: 50, fit: BoxFit.cover),
          subtitle: Text("\$ ${listData[index]["price"].toString()}"),
        ),
        width: 180,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0)));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListDate);
  }
}
