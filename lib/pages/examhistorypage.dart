import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_task/themes.dart';
import 'package:ui_task/widgets/lists/examhistorywidget.dart';
import 'package:ui_task/widgets/lists/examlistwidget.dart';

class ExamHistPage1 extends StatelessWidget {
  const ExamHistPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 14, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: width / 130.667,
                  width: width / 13.57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                ),
                SizedBox(
                  height: width / 56,
                  width: width / 39.2,
                ),
                Container(
                  height: width / 130.667,
                  width: width / 13.57,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                ),
                SizedBox(
                  height: width / 56,
                  width: width / 39.2,
                ),
                Container(
                  height: width / 130.667,
                  width: width / 30.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          "Exam History",
          style: Mytheme.header1(context, width, Colors.blue),
        ),
      ),
      body: SafeArea(
        child: Padding(
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
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width / 1.7,
                          child: Text(
                            "Lorem ip hsdh h shg ohi  shs hwh io hsd vh hh sho h hsdod hdf hd ohd d hfsd dh  sih ",
                            style: Mytheme.smalltext(context, width),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                          "assets/images/stud.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: width / 19.2,
                ),
                SizedBox(
                  child: ExamHistoryList(
                    isColor: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
