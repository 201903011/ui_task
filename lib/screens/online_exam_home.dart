import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_task/models/exam.dart';
import 'package:ui_task/models/history.dart';
import 'package:ui_task/models/subject.dart';
import 'package:ui_task/pages/examhistorypage.dart';
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

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 24.5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Exam ",
                          style: Mytheme.header1(context, width, Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Hello, John Doe",
                          style: Mytheme.smalltext(context, width),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Your score is 75/100",
                          style: Mytheme.smalltext(context, width),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width / 3.5,
                        height: width / 3.5,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Image.asset(
                          "assets/images/study.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: width / 15.68,
                ),
                Row(
                  children: [
                    Text(
                      "Subjects",
                      style: Mytheme.header2(context, width, Colors.black),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 80, vertical: width / 95),
                        child: Center(
                          child: Text(
                            "see all",
                            style:
                                Mytheme.header2(context, width, Colors.black),
                          ),
                        ),
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
                      style: Mytheme.header2(context, width, Colors.black),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 80, vertical: width / 95),
                        child: Center(
                          child: Text(
                            "see all",
                            style:
                                Mytheme.header2(context, width, Colors.black),
                          ),
                        ),
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
                      "Exam History",
                      style: Mytheme.header2(context, width, Colors.black),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ExamHistPage1()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 80, vertical: width / 95),
                          child: Center(
                            child: Text(
                              "see all",
                              style:
                                  Mytheme.header2(context, width, Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: width / 19.2,
                ),
                SizedBox(
                  height: 300,
                  child: ExamHistoryList(isColor: false),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
