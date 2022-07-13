import 'package:flutter/material.dart';
import 'package:ui_task/themes.dart';

import '../../models/exam.dart';

class ExamList extends StatelessWidget {
  const ExamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return ListView.builder(
      itemCount: examlist.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(width / 78.4),
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
    Color color = index % 3 == 0
        ? Color(0xffcd6262)
        : index % 3 == 1
            ? Color(0xff0061ab)
            : Color(0xff54ab00);

    return Container(
      width: width * 0.35,
      height: width * 0.35,
      decoration: BoxDecoration(
          color: Color.fromARGB(41, 249, 164, 44),
          borderRadius: BorderRadius.circular(width * 0.025),
          shape: BoxShape.rectangle),
      child: Padding(
        padding: EdgeInsets.all(width / 49),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Maths Chapter- 1",
              style: Mytheme.smallw(context, width, color),
            ),
            SizedBox(
              height: width / 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: width / 39.2,
                  color: color,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "8 June, 2022",
                  style: Mytheme.smallw(context, width, color),
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Row(
              children: [
                SizedBox(
                  width: width / 39.2,
                ),
                SizedBox(
                  width: width / 56,
                ),
                Text(
                  "8:30 am",
                  style: Mytheme.smallw(context, width, color),
                ),
              ],
            ),
            SizedBox(
              height: width / 78.4,
            ),
            Spacer(),
            Row(
              children: [
                Icon(Icons.edit_calendar, size: width / 32.66, color: color),
                SizedBox(
                  width: width / 78.4,
                ),
                Text(
                  "15 Questions",
                  style: Mytheme.smallw(context, width, color),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
