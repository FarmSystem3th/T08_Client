import 'package:farm04_modeul/app/utility/log_util.dart';
import 'package:get/get.dart';

class HomeFoodCategoryItemState {
  final int id;
  final String name;
  final String assetsPath;

  HomeFoodCategoryItemState({
    required this.id,
    required this.name,
    required this.assetsPath
  });
}

class HomeViewModel extends GetxController {
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
  late final RxList<HomeFoodCategoryItemState> _homeFoodCategoryOverviewList;

  /* ------------------------------------------------------ */
  /* Public Fields ---------------------------------------- */
  /* ------------------------------------------------------ */
  int get selectedTypeToggleIndex => _selectedTypeToggleIndex.value; /// getter method
  List<HomeFoodCategoryItemState> get homeFoodCategoryOverviewList => _homeFoodCategoryOverviewList;

  /* ------------------------------------------------------ */
  /* Method ----------------------------------------------- */
  /* ------------------------------------------------------ */

  @override
  void onInit() {
    super.onInit();

    _selectedTypeToggleIndex = RxInt(-1);
    _homeFoodCategoryOverviewList = <HomeFoodCategoryItemState>[].obs;
  }

  @override
  void onReady() {
    super.onReady();
    _updateFoodCategoryData();
  }

  // toggle select 변경하기
  void changeTypeToggleIndex(int index) {
    _selectedTypeToggleIndex.value = index;
    LogUtil.info(
      "changed seletedTypeToggleIndex to ${index}",
    );
  }
  // food category list 데이터 업데이트
  void _updateFoodCategoryData() async {
    List<HomeFoodCategoryItemState> data = [
      HomeFoodCategoryItemState(id: 1, name: '전체', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 2, name: '치킨', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 3, name: '피자', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 4, name: '한식', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 5, name: '분식', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 6, name: '족발/보쌈', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 7, name: '중식', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 8, name: '돈까스/회/일식', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 9, name: '패스트푸드', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 10, name: '카페/디저트', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 11, name: '아시안/양식', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 12, name: '야식', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 13, name: '도시락', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 14, name: '브랜드관', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 15, name: '전통시장', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 16, name: '부평특별관', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
      HomeFoodCategoryItemState(id: 17, name: '외식업특별관', assetsPath: 'assets/icons/home_list_chicken_icon.svg'),
    ];

    _homeFoodCategoryOverviewList.clear(); /// 데이터 초기화
    _homeFoodCategoryOverviewList.addAll(data);
  }
}