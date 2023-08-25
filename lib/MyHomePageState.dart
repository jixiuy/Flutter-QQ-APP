import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qq/pages/Find.dart';
import 'package:qq/pages/Info.dart';
import 'package:qq/pages/Social.dart';

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({super.key});

  @override
  State<MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<MyHomePageState> {
  int _currentIndex = 0;
  List _pageList = [Info(), Social(), Find()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text('底部导航栏'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.textsms), label: "信息"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "联系人"),
          BottomNavigationBarItem(
              icon: Icon(IconData(0xe726, fontFamily: 'iconfont')),
              label: "动态"),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
