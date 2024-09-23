import 'package:farm04_modeul/app/utility/log_util.dart';
import 'package:get/get.dart';

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
  RxInt _selectedTypeToggleIndex = RxInt(-1); /// viewModel 값 업데이트를 위해 RxInt 값 이용

  /* ------------------------------------------------------ */
  /* Public Fields ---------------------------------------- */
  /* ------------------------------------------------------ */
  int get selectedTypeToggleIndex => _selectedTypeToggleIndex.value; /// getter method

  /* ------------------------------------------------------ */
  /* Method ----------------------------------------------- */
  /* ------------------------------------------------------ */

  @override
  void onInit() {
    super.onInit();

    _selectedTypeToggleIndex = RxInt(-1);
  }

  @override
  void onReady() {
    super.onReady();
    _fetchHomeFoodCategoryListInformation();
  }

  // food category 목록 정보 가져오기
  void _fetchHomeFoodCategoryListInformation() async {

  }

  // toggle select 변경하기
  void changeTypeToggleIndex(int index) {
    _selectedTypeToggleIndex.value = index;
    LogUtil.info(
      "changed seletedTypeToggleIndex to ${index}",
    );
  }
}