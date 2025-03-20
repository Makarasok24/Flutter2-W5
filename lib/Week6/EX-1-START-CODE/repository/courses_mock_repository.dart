import 'package:w5/Week6/EX-1-START-CODE/models/course.dart';
import 'package:w5/Week6/EX-1-START-CODE/repository/courses_repository.dart';

class CoursesMockRepository implements CoursesRepository {
  final List<Course> courses = [Course(name: "HTML"), Course(name: "JAVA")];
  @override
  List<Course> getCourses() {
    return courses;
  }

  @override
  void addScore(Course course, CourseScore score) {
    for (int i = 0; i < courses.length; i++) {
      if (courses[i].name == course.name) {
        courses[i].addScore(score);
      }
    }
  }
}
