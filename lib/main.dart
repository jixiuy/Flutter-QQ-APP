import 'package:flutter/material.dart';

import 'MyHomePageState.dart';
import 'package:flutter/services.dart'; // 导入Services库

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue, // 设置状态栏颜色为蓝色
    statusBarBrightness: Brightness.dark, // 设置状态栏文本颜色为白色
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePageState(),
    );
  }
}