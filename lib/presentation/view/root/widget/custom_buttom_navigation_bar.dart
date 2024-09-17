import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/app/config/font_system.dart';
import 'package:farm04_modeul/core/view/base_widget.dart';
import 'package:farm04_modeul/presentation/view_model/root/root_view_model.dart';

class CustomBottomNavigationBar extends BaseWidget<RootViewModel> {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Container(
          height: GetPlatform.isAndroid ? 84 : 112,
          decoration: BoxDecoration(
            color: ColorSystem.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            border: Border(
              top: BorderSide(
                color: ColorSystem.neutral.shade200,
                width: 1,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorSystem.neutral.shade200,
                blurRadius: 10,
                offset: const Offset(0, -1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: BottomNavigationBar(
              // State Management
              currentIndex: viewModel.selectedIndex,
              onTap: viewModel.updateSelectedIndex,

              // Design
              backgroundColor: ColorSystem.white,
              type: BottomNavigationBarType.fixed,

              // When not selected
              unselectedItemColor: ColorSystem.neutral.shade200,
              unselectedLabelStyle: FontSystem.Sub3,

              // When selected
              selectedLabelStyle: FontSystem.Sub3,
              selectedItemColor: ColorSystem.primary.shade700,

              // Items
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
