import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/app/config/font_system.dart';

class StoreOverviewEmptyItemView extends StatelessWidget {
  const StoreOverviewEmptyItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 45.0),
          decoration: BoxDecoration(
            color: ColorSystem.white,
            border: Border.all(color: ColorSystem.neutral.shade500),
            boxShadow: [
              BoxShadow(
                color: ColorSystem.neutral.shade300,
                blurRadius: 7,
                offset: const Offset(0, 3), // Vertical and horizontal offset
              ),
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          alignment: Alignment.center,
          child: Text(
            '참여한 혜윰터가 없습니다...',
            style: FontSystem.Sub2.copyWith(
              color: ColorSystem.neutral.shade500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
      ],
    ).paddingOnly(top: 20.0);
  }
}
