import 'package:flutter/material.dart';
import 'package:w5/Exercise2/models/color_counter.dart';
import 'package:w5/Exercise2/widget/color_tap.dart';
import 'package:provider/provider.dart';

class ColorTapScreen extends StatelessWidget {
  const ColorTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Consumer<ColorCounter>(
        builder: (context, colorCounter, child) {
          return Column(
            children: [
              ColorTap(
                type: CardType.red,
                tapCount: colorCounter.redTapCount,
                onTap: colorCounter.incrementRedTap,
              ),
              ColorTap(
                type: CardType.blue,
                tapCount: colorCounter.blueTapCount,
                onTap: colorCounter.incrementBlueTap,
              ),
            ],
          );
        },
      ),
    );
  }
}
