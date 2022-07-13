import 'package:flutter/material.dart';
import 'package:ui_task/themes.dart';

import '../../models/history.dart';

class ExamHistoryList extends StatelessWidget {
  final bool isColor;
  const ExamHistoryList({Key? key, required this.isColor}) : super(key: key);

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
        child: ExamHistoryCard(
          index: index,
          history: historylist[index],
          color: isColor
              ? index % 4 == 0
                  ? Color(0xffcd6262)
                  : index % 4 == 1
                      ? Color(0xff0061ab)
                      : index % 4 == 2
                          ? Color(0xffF8A22C)
                          : Color(0xff54ab00)
              : Colors.black,
          isColor: isColor,
        ),
      ),
    );
  }
}

class ExamHistoryCard extends StatelessWidget {
  final int index;
  final ExamHistory history;
  final Color color;
  final bool isColor;

  const ExamHistoryCard(
      {Key? key,
      required this.index,
      required this.history,
      r,
      required this.color,
      required this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    Color color = isColor
        ? index % 4 == 0
            ? Color(0xffcd6262)
            : index % 4 == 1
                ? Color(0xff0061ab)
                : index % 4 == 2
                    ? Color(0xffF8A22C)
                    : Color(0xff54ab00)
        : Colors.black;
    Color bgcolor = isColor
        ? index % 4 == 0
            ? Color(0xffcd6262)
            : index % 4 == 1
                ? Color(0xff0061ab)
                : index % 4 == 2
                    ? Color(0xffF8A22C)
                    : Color(0xff54ab00)
        : Colors.white;
    return Container(
      width: width - 35,
      height: width / 6.4262,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.02),
        color: bgcolor.withOpacity(0.1),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Container(
              height: width / 6.4262,
              width: width / 6.4262,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: bgcolor.withOpacity(0.17),
                  borderRadius: BorderRadius.circular(width * 0.02)),
              child: Column(children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: width / 49, bottom: width / 100),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(width * 0.02)),
                    child: Image.asset(
                      "assets/images/ima.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  history.sub_name,
                  style: Mytheme.tinyw(context, width, color),
                  overflow: TextOverflow.ellipsis,
                )
              ]),
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
                SizedBox(
                  height: width / 64.66,
                ),
                Text(
                  history.sub_name,
                  style: Mytheme.smallheading(context, width, color),
                ),
                SizedBox(
                  height: width / 64.66,
                ),
                Text(
                  "Score ${history.score} / ${history.fullscore}",
                  style: Mytheme.smallw(context, width, color),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
