import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      //user Stack() widget to overlap content and waves
      config: CustomConfig(
        colors: [
          Colors.redAccent.withOpacity(0.3),
          Colors.redAccent.withOpacity(0.3),
          Colors.redAccent.withOpacity(0.3),
          //the more colors here, the more wave will be
        ],
        durations: [4000, 5000, 7000],
        //durations of animations for each colors,
        // make numbers equal to numbers of colors
        heightPercentages: [0.01, 0.05, 0.03],
        //height percentage for each colors.
        blur: const MaskFilter.blur(BlurStyle.solid, 5),
        //blur intensity for waves
      ),
      waveAmplitude: 35.00, //depth of curves
      waveFrequency: 3, //number of curves in waves
      backgroundColor: Colors.white, //background colors
      size: const Size(
        double.infinity,
        double.infinity,
      ),
    );
  }
}
