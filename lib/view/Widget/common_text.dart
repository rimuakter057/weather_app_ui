import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? overflow;

  const CommonText(
      {super.key,
      required this.text,
      this.size,
      this.color,
      this.fontWeight,
      this.maxLines, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? 14,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: color ?? Colors.white,
      ),
      maxLines: maxLines ?? 20,
      overflow: TextOverflow.ellipsis,
    );
  }
}
