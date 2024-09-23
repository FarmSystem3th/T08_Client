import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/app/utility/log_util.dart';
import 'package:farm04_modeul/core/view/base_widget.dart';
import 'package:farm04_modeul/presentation/view_model/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTypeToggleButton extends BaseWidget<HomeViewModel> {
  const HomeTypeToggleButton({super.key});

  Widget buildToggleButton(String text, bool isSelected, VoidCallback onTap) {
    LogUtil.info(
      "selected ${isSelected}",
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          color: isSelected ? ColorSystem.white : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: isSelected ? ColorSystem.primary.shade500 : Colors.transparent,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? ColorSystem.primary.shade500 : ColorSystem.black,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildView(BuildContext context) {
    return Obx(() => Container(
          width: 320,
          height: 40.0,
          decoration: BoxDecoration(
            color: ColorSystem.gray.shade200,
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-1, 0),
                child: buildToggleButton('배달', viewModel.selectedTypeToggleIndex == 1, () => viewModel.changeTypeToggleIndex(1)),
              ),
              Align(
                alignment: Alignment(1, 0),
                child: buildToggleButton('포장', viewModel.selectedTypeToggleIndex == -1, () => viewModel.changeTypeToggleIndex(-1)),
              ),
            ],
          ),
        )
      );
    }
  }
