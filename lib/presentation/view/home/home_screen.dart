import 'package:farm04_modeul/core/view/base_screen.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/presentation/view/home/widget/home_food_category_list_view.dart';
import 'package:farm04_modeul/presentation/view_model/home/home_view_model.dart';
import 'package:farm04_modeul/presentation/view/home/widget/component/home_type_toggle_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends BaseScreen<HomeViewModel>{
  const HomeScreen({super.key});

  @override /// safearea로 화면 감싸기
  bool get wrapWithInnerSafeArea => true;

  @override /// 화면 상단을 safearea로 설정
  bool get setTopInnerSafeArea => true;

  @override /// 화면 하단을 safearea로 설정하지 않음
  bool get setBottomInnerSafeArea => false;

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: HomeTypeToggleButton(),
          ),
          Expanded(
            child: HomeFoodCategoryListView(),
          ),
          SizedBox(height: GetPlatform.isAndroid ? 74 : 112),
        ],
      ),
    );
  }
}