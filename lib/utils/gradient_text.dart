import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    Key? key,
    this.text,
    this.fontSize,
  ) : super(key: key);

  final String text;
  final double fontSize;
  static const color1 = Color(0xFFF4E56E);
  static const color2 = Color(0xFFB76A0A);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        colors: [color1, color2],
      ).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
