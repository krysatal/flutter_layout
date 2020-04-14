import 'dart:math';

import 'package:flutter/material.dart';
void main() => runApp(MyCardWidget());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'hello Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello Flutter'),
        ),
        body: Center(
          child: new Text('hhhhhhhhhh'),
        ),
      ),
    );
  }
}
// 生成一个了灵活的横向布局
class MyRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '学习Row布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row布局'),
        ),
        body: new Row(
          children: <Widget>[
            Expanded(child: new RaisedButton( // 灵活的横向布局，平均分配展示
              onPressed: () {},
              color: Colors.lightBlue,
              child: Text('按钮'),
            )),
            Expanded(child: new RaisedButton(
              onPressed: () {},
              color: Colors.lightBlue,
              child: Text('按钮'),
            )),
            Expanded(child: new RaisedButton(
              onPressed: () {},
              color: Colors.pinkAccent,
              child: Text('按钮'),
            )),
            Expanded(child: new RaisedButton(
              onPressed: () {},
              color: Colors.yellowAccent,
              child: Text('按钮'),
            )),
            Expanded(child: new RaisedButton(
              onPressed: () {},
              color: Colors.pinkAccent,
              child: Text('按钮'),
            )),
          ],
        ),
      ),
    );
  }
}
class MyColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'learn Column widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('learn Column widget')
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // 相对于所有Column对齐 根据最长的
            mainAxisAlignment: MainAxisAlignment.center, // 垂直方向为主轴
            children: <Widget>[
              Expanded( // 灵活的垂直布局，平均分配展示
                  child: Text('hhhhhhh')
              ),
              Expanded(
                  child: Text('hhhhhhhhhhh')
              ),
              Expanded(
                  child: Text('hhhhhhhhhhhhhhh')
              ),
              Expanded(
                  child: Text('hhhhhhhhhh')
              ),
              Expanded(
                  child: Text('hhhhhhh88888888888888')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar( // 圆形头像
          backgroundImage: new NetworkImage('http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('哈哈哈哈'),
        )
      ],
    );
    return MaterialApp(
      title: 'learn 层叠布局',
      home: Scaffold(
        appBar: AppBar(
          title: Text('learn stackWidget')
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
class MyPositionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar( // 圆形头像
          backgroundImage: new NetworkImage('http://img5.mtime.cn/mg/2019/12/17/105244.25525559_170X256X4.jpg'),
          radius: 100.0,
        ),
        new Positioned(
          top: 20.0,
          left: 10.0,
          child: Text('hhhhhhh'),
        ),
        new Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Text('xxxxxxxx'),
        ),
      ],
    );
    return MaterialApp(
      title: 'learn position',
      home: Scaffold(
        appBar: AppBar(
          title: Text('learn position'),
        ),
        body: new Center(
          child: stack,
        ),
      ),
    );
  }
}
class MyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('吉林省计生深',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text('hhhhnicaicai'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: Text('北京市天哪买呢',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text('hhhhnicaicai'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: Text('哔哩哔哩丽丽',
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text('hhhhnicaicai'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          )
        ],
      ),
    );
    return MaterialApp(
      title: 'learn card widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('learn card widget'),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}
