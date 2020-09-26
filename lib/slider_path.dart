import 'package:flutter/material.dart';

class SliderPath extends StatelessWidget {

  SliderPath({@required this.sColor, @required this.onChanged, this.sValue});

  final Color sColor;
  final Function onChanged;
  final int sValue;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        inactiveTrackColor: Color(0xFF8D8E98),
        activeTrackColor: sColor.withOpacity(0.7),
        thumbColor: sColor,
        overlayColor: sColor.withOpacity(0.2),
        thumbShape:
        RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape:
        RoundSliderOverlayShape(overlayRadius: 18.0),
      ),
      child: Slider(
        value: sValue.toDouble(),
        min: 1,
        max: 5,
        onChanged: onChanged,
      ),
    );
  }
}
