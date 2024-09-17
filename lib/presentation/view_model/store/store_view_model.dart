import 'package:farm04_modeul/presentation/view/store/widget/store_overview/component/store_overview_default_item_view.dart';
import 'package:get/get.dart';
import 'package:farm04_modeul/core/wrapper/state_wrapper.dart';

class StoreViewModel extends GetxController {
  /* ------------------------------------------------------ */
  /* Static Fields ---------------------------------------- */
  /* ------------------------------------------------------ */

  /* ------------------------------------------------------ */
  /* DI Fields -------------------------------------------- */
  /* ------------------------------------------------------ */

  /* ------------------------------------------------------ */
  /* Private Fields --------------------------------------- */
  /* ------------------------------------------------------ */
  late final RxBool _isLoadingOverviewList = true.obs;
  /* ------------------------------------------------------ */
  /* Public Fields ---------------------------------------- */
  /* ------------------------------------------------------ */

  bool get isLoadingOverviewList => _isLoadingOverviewList.value;
  /* ------------------------------------------------------ */
  /* Method ----------------------------------------------- */
  /* ------------------------------------------------------ */
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
    _fetchHeyumteoListInformation();
  }

  // 혜윰터 목록 정보 가져오기
  void _fetchHeyumteoListInformation() async {
    _isLoadingOverviewList.value = true;
    // page
    _isLoadingOverviewList.value = false;
  }
}
