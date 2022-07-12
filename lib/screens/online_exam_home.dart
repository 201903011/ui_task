import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_task/models/exam.dart';
import 'package:ui_task/models/history.dart';
import 'package:ui_task/models/subject.dart';
import 'package:ui_task/themes.dart';
import 'package:ui_task/widgets/lists/examhistorywidget.dart';
import 'package:ui_task/widgets/lists/examlistwidget.dart';
import 'package:ui_task/widgets/lists/subjectslistwidget.dart';

class OnlineExamHomeScreen extends StatefulWidget {
  const OnlineExamHomeScreen({Key? key}) : super(key: key);

  @override
  State<OnlineExamHomeScreen> createState() => _OnlineExamHomeScreenState();
}

class _OnlineExamHomeScreenState extends State<OnlineExamHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height / 15.33,
        title: Padding(
          padding: EdgeInsets.all(9),
          child: Container(
            height: width / 13.066,
            width: width / 7.127,
            decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                borderRadius: BorderRadius.circular(width / 78.4)),
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              width: height / 21.47,
              height: height / 21.47,
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 24.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Hello, John Doe",
                style: Mytheme.smalltext(context, width),
              ),
              SizedBox(
                height: width / 49,
              ),
              Text(
                "Welcome Back!",
                style: Mytheme.header1(context, width),
              ),
              SizedBox(
                height: width / 15.68,
              ),
              Row(
                children: [
                  Text(
                    "Subjects",
                    style: Mytheme.header2(context, width),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: width / 24.5),
                    child: Text(
                      "see all",
                      style: Mytheme.see(context, width),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: width / 24.5),
                child: SizedBox(
                  width: width - 35,
                  height: width / 3.56,
                  child: SubjectList(),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Take Exam",
                    style: Mytheme.header2(context, width),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: width / 24.5),
                    child: Text(
                      "see all",
                      style: Mytheme.see(context, width),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width / 26.13,
              ),
              SizedBox(
                height: width * 0.31,
                width: width - 35,
                child: ExamList(),
              ),
              SizedBox(
                height: width / 26.13,
              ),
              Row(
                children: [
                  Text(
                    "Exam history ",
                    style: Mytheme.header2(context, width),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: width / 24.5),
                    child: Text(
                      "see all",
                      style: Mytheme.see(context, width),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width / 19.2,
              ),
              SizedBox(
                height: 300,
                child: ExamHistoryList(),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
