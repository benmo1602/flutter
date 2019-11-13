// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_app/widget/random_words.dart';

/**
 * 入口函数
 */


void main() {
  return runApp(MyApp());
}

/**
 * 定义一个 MyApp Widget
 */
// stl 无状态
class MyApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '测试列表',
      theme: new ThemeData(
        // 新增代码开始...·
        primaryColor: Colors.blue,
      ), // ... 代码新增结束
      home: MyHomePage(title: 'h9 APP ceshi'),
      routes: routers,
    );
  }
  // #enddocregion build
}

// #enddocregion MyApp
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var routeLists = routers.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (context, index) {
            return new InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeLists[index]);
              },
              child: new Card(
                child: new Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  child: new Text(routerName[index]),
                ),
              ),
            );
          },
          itemCount: routers.length,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

const routerName = [
  "randomWords 例子",
];

Map<String, WidgetBuilder> routers = {
  "widget/randomWords": (context) {
    return new RandomWords();
  },
};
