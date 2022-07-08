import 'package:flutter/material.dart';
import 'package:ui_task/models/subject.dart';
import 'package:ui_task/themes.dart';

class SubjectList extends StatelessWidget {
  const SubjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: subjectlist.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.all(7.0),
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
    return Container(
      child: Column(
        children: [
          Container(
            width: 60,
            height: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 187, 208),
                shape: BoxShape.circle),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 80,
              child: Center(
                  child: Text(
                subject.name,
                style: Mytheme.small(context),
              ))),
        ],
      ),
    );
  }
}
