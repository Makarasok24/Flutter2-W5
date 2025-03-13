import 'package:flutter/material.dart';
import 'package:w5/Exercise2/models/color_counter.dart';
import 'package:provider/provider.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Consumer(
        builder: (context, ColorCounter colorCounter, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Red Taps: ${colorCounter.redTapCount}',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Blue Taps: ${colorCounter.blueTapCount}',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
