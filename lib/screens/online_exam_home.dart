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
        title: Container(
          height: 30,
          width: 55,
          decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
              borderRadius: BorderRadius.circular(5)),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Container(
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade100,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                "Hello, John Doe",
                style: Mytheme.smalltext(context),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Welcome Back!",
                style: Mytheme.header1(context),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Subjects",
                    style: Mytheme.header2(context),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      "see all",
                      style: Mytheme.see(context),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 35,
                  height: MediaQuery.of(context).size.width * 0.33,
                  child: SubjectList(),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Take Exam",
                    style: Mytheme.header2(context),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      "see all",
                      style: Mytheme.see(context),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: height * 0.15,
                width: width - 35,
                child: ExamList(),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Exam history ",
                    style: Mytheme.header2(context),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      "see all",
                      style: Mytheme.see(context),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
