import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w5/Week6/EX-1-START-CODE/provider/courses_provider.dart';
import '../models/course.dart';
import 'course_score_form.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, required this.courseId});

  final String courseId;

  @override
  Widget build(BuildContext context) {
    final coursesProvider = Provider.of<CoursesProvider>(context);
    final course = coursesProvider.getCourseFor(courseId);
    final scores = course.scores;

    void _addScore() async {
      CourseScore? newSCore = await Navigator.of(context).push<CourseScore>(
        MaterialPageRoute(builder: (ctx) => const CourseScoreForm()),
      );

      if (newSCore != null) {
        coursesProvider.addScore(courseId, newSCore);
      }
    }

    Color scoreColor(double score) {
      return score > 50 ? Colors.green : Colors.orange;
    }

    Widget content = const Center(child: Text('No Scores added yet.'));

    if (scores.isNotEmpty) {
      content = ListView.builder(
        itemCount: scores.length,
        itemBuilder:
            (ctx, index) => ListTile(
              title: Text(scores[index].studentName),
              trailing: Text(
                scores[index].studenScore.toString(),
                style: TextStyle(
                  color: scoreColor(scores[index].studenScore),
                  fontSize: 15,
                ),
              ),
            ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          course.name,
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: _addScore, icon: const Icon(Icons.add)),
        ],
      ),
      body: content,
    );
  }
}
