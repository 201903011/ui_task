import 'package:flutter/material.dart';
import 'package:ui_task/models/subject.dart';
import 'package:ui_task/themes.dart';

class SubjectList extends StatelessWidget {
  const SubjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: subjectlist.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(width / 56),
        child: SubjectCard(
          subject: subjectlist[index],
          index: index,
        ),
      ),
    );
  }
}

class SubjectCard extends StatelessWidget {
  final int index;
  final Subject subject;

  const SubjectCard({Key? key, required this.index, required this.subject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      child: Column(
        children: [
          Container(
            width: width / 6.533,
            height: width / 7.84,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 187, 208),
                shape: BoxShape.circle),
          ),
          SizedBox(
            height: width / 39.2,
          ),
          Container(
              width: width / 4.9,
              child: Center(
                  child: Text(
                subject.name,
                style: Mytheme.small(context, width),
              ))),
        ],
      ),
    );
  }
}
