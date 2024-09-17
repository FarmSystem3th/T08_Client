import 'package:flutter/material.dart';

/// InfinityLine
///
/// Color and Gap can be set.
///
/// It is used to create a line that stretches infinitely.
class InfinityVerticalLine extends StatelessWidget {
  const InfinityVerticalLine({
    super.key,
    required this.gap,
    this.color,
  });

  final Color? color;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: gap,
      height: double.infinity,
      color: color,
    );
  }
}
