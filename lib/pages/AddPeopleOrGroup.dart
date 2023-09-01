import 'package:flutter/material.dart';
class AddPeopleOrGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Text(
          '这是新页面',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}