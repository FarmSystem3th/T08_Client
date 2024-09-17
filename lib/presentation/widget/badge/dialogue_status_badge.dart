import 'package:flutter/material.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/app/config/font_system.dart';
import 'package:farm04_modeul/app/type/e_dialogue_status.dart';

class DialogueStatusBadge extends StatelessWidget {
  const DialogueStatusBadge({
    super.key,
    required this.status,
  });

  final EDialogueStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(14.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        status.koName,
        style: FontSystem.Sub2.copyWith(
          color: _textColor,
        ),
      ),
    );
  }

  Color get _backgroundColor {
    switch (status) {
      case EDialogueStatus.PROCESSING:
        return ColorSystem.neutral.shade200;
      case EDialogueStatus.HOST_ANSWER:
        return ColorSystem.secondary;
      default:
        return ColorSystem.blue;
    }
  }

  Color get _textColor {
    switch (status) {
      case EDialogueStatus.PROCESSING:
        return ColorSystem.neutral.shade500;
      case EDialogueStatus.HOST_ANSWER:
        return ColorSystem.white;
      default:
        return ColorSystem.white;
    }
  }
}
