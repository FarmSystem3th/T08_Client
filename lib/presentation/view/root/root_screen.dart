import 'package:farm04_modeul/presentation/view/home/home_screen.dart';
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
