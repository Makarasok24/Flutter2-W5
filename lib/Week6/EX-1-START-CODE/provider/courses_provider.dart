import 'package:flutter/material.dart';
import 'package:w5/Week6/EX-1-START-CODE/models/course.dart';
import 'package:w5/Week6/EX-1-START-CODE/repository/courses_repository.dart';

class CoursesProvider extends ChangeNotifier {
  final CoursesRepository _repository;
  CoursesProvider({required CoursesRepository repository})
    : _repository = repository;

  List<Course> getCourses() {
    return _repository.getCourses();
  }

  Course getCourseFor(String courseId) {
    final courses = _repository.getCourses();
    // let id as the same of course
    return courses.firstWhere((courseIndex) => courseIndex.name == courseId);
  }

  void addScore(String courseId, CourseScore score) {
    final course = getCourseFor(courseId);
    _repository.addScore(course, score);
    notifyListeners();
  }
}
