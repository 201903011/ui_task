import 'package:flutter/material.dart';
import 'package:ui_task/themes.dart';

import '../../models/exam.dart';

class ExamList extends StatelessWidget {
  const ExamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: examlist.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(8.0),
        child: ExamCard(
          exa: examlist[index],
          index: index,
        ),
      ),
    );
  }
}

class ExamCard extends StatelessWidget {
  final int index;
  final Exam exa;
  const ExamCard({Key? key, required this.index, required this.exa})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Container(
      width: width * 0.35,
      height: 100,
      decoration: BoxDecoration(
        gradient: index % 3 == 0
            ? LinearGradient(
                colors: [Color(0xff0ea7bc), Color(0xff87eaf8)],
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
              )
            : index % 3 == 1
                ? LinearGradient(
                    colors: [Color(0xff382bd9), Color(0xff5885fd)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                  )
                : LinearGradient(
                    colors: [Color(0xff602fc5), Color(0xff864dfd)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                  ),
        borderRadius: BorderRadius.circular(width * 0.025),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "English Literature",
              style: Mytheme.smallw(context),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 10,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "8 to 9 February 2022",
                  style: Mytheme.tinyw(context),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Icon(
                  Icons.timer_outlined,
                  size: 10,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "10am - 1pm",
                  style: Mytheme.tinyw(context),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  "Take Exam",
                  style: Mytheme.smallw(context),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_right_alt, size: 12, color: Colors.white)
              ],
            )
          ],
        ),
      ),
    );
  }
}
