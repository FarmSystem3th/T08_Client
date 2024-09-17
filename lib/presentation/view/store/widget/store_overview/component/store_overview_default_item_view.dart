import 'package:flutter/material.dart';
import 'package:farm04_modeul/app/config/color_system.dart';

class StoreOverviewDefaultItemView extends StatelessWidget {
  const StoreOverviewDefaultItemView({
    super.key,
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: ColorSystem.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: ColorSystem.secondary.shade600
          ),
          boxShadow: [
            BoxShadow(
              color: ColorSystem.neutral.shade300,
              blurRadius: 7,
              offset: const Offset(0, 3), // Vertical and horizontal offset
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
