import 'package:flutter/material.dart';
import 'package:ui_task/themes.dart';

import '../../models/history.dart';

class ExamHistoryList extends StatelessWidget {
  const ExamHistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return ListView.builder(
      itemCount: historylist.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(8.0),
        child: ExamHistoryCard(index: index, history: historylist[index]),
      ),
    );
  }
}

class ExamHistoryCard extends StatelessWidget {
  final int index;
  final ExamHistory history;

  const ExamHistoryCard({Key? key, required this.index, required this.history})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Container(
      width: width - 35,
      height: height * 0.1 - 25,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(width * 0.02)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: height * 0.1 - 25,
              width: height * 0.1 - 25,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(101, 248, 187, 208),
                  borderRadius: BorderRadius.circular(width * 0.02)),
            ),
          ),
          SizedBox(
            width: height * 0.03,
          ),
          Container(
            height: height * 0.1 - 35,
            width: width * 0.4,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  history.sub_name,
                  style: Mytheme.smallheading(context),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Score ${history.score} / 100",
                  style: Mytheme.small(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
