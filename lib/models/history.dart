import 'dart:ffi';

class ExamHistory {
  final String sub_name;
  final String image;
  final score;
  final fullscore;

  ExamHistory(this.sub_name, this.image, this.score, this.fullscore);
}

ExamHistory his1 = ExamHistory("Physics", "image", 70, 100);

ExamHistory his2 = ExamHistory("Informatio Technology", "image", 60, 100);

ExamHistory his3 = ExamHistory("Biology", "image", 70, 100);

ExamHistory his4 = ExamHistory("Chemistry", "image", 70, 100);

List<ExamHistory> historylist = [his1, his2, his3, his4];
