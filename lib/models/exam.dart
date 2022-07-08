import 'package:flutter/material.dart';

class Exam {
  final String examname;
  final String exam_id;
  final DateTime startdate;
  final DateTime enddate;
  final TimeOfDay starttime;
  final TimeOfDay endtime;

  Exam(this.examname, this.exam_id, this.startdate, this.enddate,
      this.starttime, this.endtime);
}

Exam exam1 = Exam(
  "English Literature",
  "id",
  new DateTime(2022, 8, 2),
  new DateTime(2022, 9, 2),
  new TimeOfDay(hour: 10, minute: 0),
  new TimeOfDay(hour: 13, minute: 0),
);

Exam exam2 = Exam(
  "English Literature",
  "id",
  new DateTime(2022, 8, 2),
  new DateTime(2022, 9, 2),
  new TimeOfDay(hour: 10, minute: 0),
  new TimeOfDay(hour: 13, minute: 0),
);

Exam exam3 = Exam(
  "English Literature",
  "id",
  new DateTime(2022, 8, 2),
  new DateTime(2022, 9, 2),
  new TimeOfDay(hour: 10, minute: 0),
  new TimeOfDay(hour: 13, minute: 0),
);

List<Exam> examlist = [exam1, exam2, exam3];
