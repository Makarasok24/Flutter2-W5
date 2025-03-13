import 'package:flutter/material.dart';
import 'package:w5/Exercise2/models/color_counter.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Red Taps: ${ColorCounter().redTapCount}', style: TextStyle(fontSize: 24)),
            Text('Blue Taps: ${ColorCounter().blueTapCount}', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
