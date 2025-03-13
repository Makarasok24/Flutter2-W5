import 'package:flutter/material.dart';
import 'package:w5/Exercise2/models/color_counter.dart';
import 'package:w5/Exercise2/widget/color_tap.dart';

class ColorTapScreen extends StatelessWidget {
  const ColorTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Column(
        children: [
          ColorTap(
            type: CardType.red,
            tapCount: ColorCounter().redTapCount,
            onTap: ColorCounter().incrementRedTap,
          ),
          ColorTap(
            type: CardType.blue,
            tapCount: ColorCounter().blueTapCount,
            onTap: ColorCounter().incrementBlueTap,
          ),
        ],
      ),
    );
  }
}
