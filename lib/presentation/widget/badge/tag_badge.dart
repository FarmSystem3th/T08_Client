import 'package:flutter/material.dart';
import 'package:farm04_modeul/app/config/font_system.dart';

class TagBadge extends StatelessWidget {
  const TagBadge({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text,
        style: FontSystem.Sub2.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
