import 'package:farm04_modeul/presentation/widget/image/svg_image_box.dart';
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
          height: GetPlatform.isAndroid ? 74 : 112,
          decoration: BoxDecoration(
            color: ColorSystem.white,
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
            child: BottomNavigationBar(
              // State Management
              currentIndex: viewModel.selectedIndex,
              onTap: viewModel.updateSelectedIndex,

              // Design
              backgroundColor: ColorSystem.white,
              type: BottomNavigationBarType.fixed,

              // When not selected
              unselectedIconTheme: IconThemeData(
                color: ColorSystem.bottomNaviagation.shade900,
              ),
              unselectedItemColor: ColorSystem.black,
              unselectedLabelStyle: FontSystem.Sub3,

              // When selected
              selectedLabelStyle: FontSystem.Sub3Bold,
              selectedItemColor: ColorSystem.black,
              selectedIconTheme: IconThemeData(
                color: ColorSystem.bottomNaviagation.shade100,
              ),
              // Items
              items: [
                BottomNavigationBarItem(
                  icon: SvgImageBox(
                      assetPath: 'assets/icons/bottom_navigation_home.svg',
                      width: 26,
                      height: 26,
                      color: viewModel.selectedIndex == 0
                          ? ColorSystem.blue.shade500
                          : ColorSystem.neutral.shade200,
                  ),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: SvgImageBox(
                      assetPath: 'assets/icons/bottom_navigation_heart.svg',
                      width: 26,
                      height: 26,
                      color: viewModel.selectedIndex == 1
                          ? ColorSystem.blue.shade500
                          : ColorSystem.neutral.shade200,
                  ),
                  label: '찜',
                ),
                BottomNavigationBarItem(
                  icon: SvgImageBox(
                      assetPath: 'assets/icons/bottom_navigation_smile.svg',
                      width: 26,
                      height: 26,
                      color: viewModel.selectedIndex == 2
                          ? ColorSystem.blue.shade500
                          : ColorSystem.neutral.shade200,
                  ),
                  label: 'MY 배달',
                ),
                BottomNavigationBarItem(
                  icon: SvgImageBox(
                      assetPath: 'assets/icons/bottom_navigation_note.svg',
                      width: 26,
                      height: 26,
                      color: viewModel.selectedIndex == 3
                          ? ColorSystem.blue.shade500
                          : ColorSystem.neutral.shade200,
                  ),
                  label: '주문내역',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
