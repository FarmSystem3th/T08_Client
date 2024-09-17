import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:farm04_modeul/app/config/color_system.dart';

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({
    super.key,
    required this.svgPath,
    required this.svgWidth,
    required this.svgHeight,
    this.actions = const <Widget>[],
  });

  final String svgPath;
  final double svgWidth;
  final double svgHeight;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorSystem.neutral.shade200,
            width: 1,
          ),
        ),
      ),
      child: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: SvgPicture.asset(
            svgPath,
            width: svgWidth,
            height: svgHeight,
          ),
        ),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: actions,
      ),
    );
  }
}
