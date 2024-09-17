import 'package:flutter/material.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/app/config/font_system.dart';

class CustomBackAppBar extends StatelessWidget {
  const CustomBackAppBar({
    super.key,
    this.title = '',
    this.actions = const <Widget>[],
  });

  final String title;
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
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            title,
            style: FontSystem.H5,
          ),
        ),
        centerTitle: true,
        surfaceTintColor: ColorSystem.white,
        backgroundColor: ColorSystem.white,
        automaticallyImplyLeading: true,
        titleSpacing: 0,
        leadingWidth: 50,
        actions: actions,
      ),
    );
  }
}
