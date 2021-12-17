import 'package:flutter/material.dart';
import 'package:udemy_first_app/res/listData.dart';
import 'dart:math' as math;

class GridViewTest extends StatelessWidget {
  List<Widget> _getDate() {
    var temp = listData.map((e) => Container(
        alignment: Alignment.center,
        child: ListTile(
          subtitle: Text(e["id"].toString()),
          leading: Image.network(e["image"], width: 50, fit: BoxFit.cover),
        ),
        // width: 180,// 不會有反應
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0)));
    return temp.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      crossAxisCount: 3,
      childAspectRatio: 1, //xy 軸比例
      children: this._getDate(),
    );
  }
}
