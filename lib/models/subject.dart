class Subject {
  final String name;
  final String sub_id;
  final String sub_img;

  Subject(this.sub_id, this.name, this.sub_img);
}

Subject su1 = Subject("id", "Physics", "image");

Subject su2 = Subject("id", "Maths", "image");

Subject su3 = Subject("id", "Biology", "image");

Subject su4 = Subject("id", "Chemistry", "image");

Subject su5 = Subject("id", "History", "image");

List<Subject> subjectlist = [su1, su2, su3, su4, su5];
