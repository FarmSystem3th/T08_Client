import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/app/config/font_system.dart';
import 'package:farm04_modeul/app/utility/log_util.dart';
import 'package:farm04_modeul/presentation/view/home/home_screen.dart';
import 'package:farm04_modeul/presentation/widget/appbar/custom_icon_app_bar.dart';
import 'package:farm04_modeul/presentation/widget/image/svg_image_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:farm04_modeul/core/view/base_screen.dart';
import 'package:farm04_modeul/presentation/view/store/store_screen.dart';
import 'package:farm04_modeul/presentation/view/root/widget/custom_buttom_navigation_bar.dart';
import 'package:farm04_modeul/presentation/view_model/root/root_view_model.dart';

class RootScreen extends BaseScreen<RootViewModel> {
  const RootScreen({super.key});

  @override
  bool get extendBodyBehindAppBar => true;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Obx(() {
        // 홈 화면의 경우
        List<Widget> actions = viewModel.selectedIndex == 0
            ? [
          IconButton(
            icon: SvgImageBox(
              assetPath: 'assets/icons/app_bar_basket.svg',
              width: 30,
              height: 25,
              color: ColorSystem.black,
            ),
            onPressed: () {
              LogUtil.info("open basket");
            },
          ),
          IconButton(
            icon: SvgImageBox(
              assetPath: 'assets/icons/app_bar_cancel.svg',
              width: 18,
              height: 18,
              color: ColorSystem.black,
            ),
            onPressed: () {
              LogUtil.info("out this service");
            },
          ),
          const SizedBox(width: 6),
        ]
            : [
              // 이외의 경우 장바구니 아이콘 삭제
          IconButton(
            icon: SvgImageBox(
              assetPath: 'assets/icons/app_bar_cancel.svg',
              width: 18,
              height: 18,
              color: ColorSystem.black,
            ),
            onPressed: () {
              LogUtil.info("out this service");
            },
          ),
        ];

        if (viewModel.selectedIndex == 0) {
          return CustomIconAppBar(
            actions: actions,
            selectedAddress: '갈산동 362 하나아파트 303호',
          );
        } else {
          return Container(
            // 홈, 찜을 제외하고 border 추가
            decoration: (viewModel.selectedIndex == 2 || viewModel.selectedIndex == 3)
                ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorSystem.neutral.shade200,
                  width: 1,
                ),
              ),
            )
                : null,
            child: AppBar(
              title: Center(
                child: Text(
                  viewModel.selectedIndex == 1
                      ? '찜'
                      : viewModel.selectedIndex == 2
                      ? 'MY 배달'
                      : '주문 내역',
                  style: FontSystem.ThinH4,
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
      }),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: viewModel.selectedIndex,
        children: const [
          HomeScreen(),
          StoreScreen(),
          StoreScreen(),
          StoreScreen(),
        ],
      ),
    );
  }

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return const CustomBottomNavigationBar();
  }
}
