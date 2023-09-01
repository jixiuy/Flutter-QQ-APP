import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qq/pages/AddPage.dart';
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
        title: Text('头像和用户名'),

        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.add),
            onSelected: (String result) {
              print('Selected: $result');
              if (result == 'person_add') {
                // Navigate to the new page when '加好友/群' is selected
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPage()),
                );
              }
            },
            offset: Offset(0, AppBar().preferredSize.height),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'person_add',
                height: 40, // Control the item height
                child: Container(
                  padding: EdgeInsets.zero, // Remove padding
                  child: ListTile(
                    contentPadding: EdgeInsets.zero, // Remove content padding
                    leading: Icon(Icons.person_add),
                    title: Text('加好友/群'),
                  ),
                ),
              ),
            ],
          ),
        ],
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
