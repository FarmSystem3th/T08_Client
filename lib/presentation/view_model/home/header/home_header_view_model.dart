import 'dart:async';

import 'package:farm04_modeul/app/utility/log_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTopBannerItemState {
  final int id;
  final String name;
  final String assetsPath;
  final String redirectUrl;

  HomeTopBannerItemState({
    required this.id,
    required this.name,
    required this.assetsPath,
    required this.redirectUrl
  });
}

class HomeHeaderViewModel extends GetxController {
  /* ------------------------------------------------------ */
  /* Static Fields ---------------------------------------- */
  /* ------------------------------------------------------ */

  /* ------------------------------------------------------ */
  /* DI Fields -------------------------------------------- */
  /* ------------------------------------------------------ */

  /* ------------------------------------------------------ */
  /* Private Fields --------------------------------------- */
  /* ------------------------------------------------------ */
  late RxInt _selectedTypeToggleIndex = RxInt(-1); /// viewModel 값 업데이트를 위해 RxInt 값 이용
  late final RxList<HomeTopBannerItemState> _homeTopBannerOverviewList;
  late final PageController _pageController = PageController();
  late RxInt _currentPageIndex = RxInt(0);
  late final Timer _timer;

  /* ------------------------------------------------------ */
  /* Public Fields ---------------------------------------- */
  /* ------------------------------------------------------ */
  int get selectedTypeToggleIndex => _selectedTypeToggleIndex.value; /// getter method
  int get currentPageIndex => _currentPageIndex.value;
  List<HomeTopBannerItemState> get homeTopBannerOverviewList => _homeTopBannerOverviewList;
  PageController get pageController => _pageController;

  /* ------------------------------------------------------ */
  /* Method ----------------------------------------------- */
  /* ------------------------------------------------------ */

  @override
  void onInit() {
    super.onInit();

    _selectedTypeToggleIndex = RxInt(-1);
    _currentPageIndex = RxInt(0);
    _homeTopBannerOverviewList = <HomeTopBannerItemState>[].obs;

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        _currentPageIndex.value++;
        if (_currentPageIndex >= _homeTopBannerOverviewList.length) {
          _currentPageIndex.value = 0;
          _pageController.jumpToPage(_currentPageIndex.value);
        } else {
          _pageController.animateToPage(
            _currentPageIndex.value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
    _updateHomeTopBannerData();
  }

  // toggle select 변경하기
  void changeTypeToggleIndex(int index) {
    _selectedTypeToggleIndex.value = index;
    LogUtil.info(
      "changed seletedTypeToggleIndex to ${index}",
    );
  }

  // home top banner list 데이터 업데이트
  void _updateHomeTopBannerData() async {
    List<HomeTopBannerItemState> data = [
      HomeTopBannerItemState(id: 1, name: 'banner1', assetsPath: 'assets/images/home_list_banner_image1.png', redirectUrl: ''),
      HomeTopBannerItemState(id: 2, name: 'banner2', assetsPath: "assets/images/home_list_banner_image2.png", redirectUrl: ''),
      HomeTopBannerItemState(id: 3, name: 'banner3', assetsPath: 'assets/images/home_list_banner_image3.png', redirectUrl: ''),
    ];

    _homeTopBannerOverviewList.clear(); /// 데이터 초기화
    _homeTopBannerOverviewList.addAll(data);
  }
}