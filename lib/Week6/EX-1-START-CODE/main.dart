import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w5/Week6/EX-1-START-CODE/provider/courses_provider.dart';
import 'package:w5/Week6/EX-1-START-CODE/repository/courses_mock_repository.dart';
import 'package:w5/Week6/EX-1-START-CODE/repository/courses_repository.dart';

import 'screens/course_list_screen.dart';

void main() {
  CoursesRepository coursesRepository = CoursesMockRepository();
  runApp(MyApp(coursesRepository: coursesRepository));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.coursesRepository});
  final CoursesRepository coursesRepository;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoursesProvider(repository: coursesRepository),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CourseListScreen(),
      ),
    );
  }
}
