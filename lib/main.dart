import 'package:flutter/material.dart';
import 'package:ui_task/pages/examhistorypage.dart';
import 'package:ui_task/screens/online_exam_home.dart';
import 'package:ui_task/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mytheme.darkTheme(context),
      home: ExamHistPage1(),
    );
  }
}
