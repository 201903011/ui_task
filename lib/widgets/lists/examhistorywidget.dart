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
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
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
      height: width / 6.4262,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(width * 0.02)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: width / 6.4262,
              width: width / 6.4262,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(101, 248, 187, 208),
                  borderRadius: BorderRadius.circular(width * 0.02)),
            ),
          ),
          SizedBox(
            width: width / 16.31,
          ),
          Container(
            height: width * 0.4,
            width: width * 0.4,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  history.sub_name,
                  style: Mytheme.smallheading(context, width),
                ),
                SizedBox(
                  height: width / 32.66,
                ),
                Text(
                  "Score ${history.score} / ${history.fullscore}",
                  style: Mytheme.small(context, width),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
