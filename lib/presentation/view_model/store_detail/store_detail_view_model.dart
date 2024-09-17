import 'package:get/get.dart';
import 'package:farm04_modeul/domain/entity/store/store_detail_state.dart';

class storeDetailViewModel extends GetxController {
  /* ------------------------------------------------------ */
  /* Static Fields ---------------------------------------- */
  /* ------------------------------------------------------ */

  /* ------------------------------------------------------ */
  /* DI Fields -------------------------------------------- */
  /* ------------------------------------------------------ */

  // 기존꺼 들고옴, id : id
  late final int id;

  /* ------------------------------------------------------ */
  /* Private Fields --------------------------------------- */
  /* ------------------------------------------------------ */
  late String _searchText;

  late final Rx<storeSummaryState> _storeSummary;

  late final RxBool _isLoadingstoreSummary;

  /* ------------------------------------------------------ */
  /* Public Fields ---------------------------------------- */
  /* ------------------------------------------------------ */
  storeSummaryState get storeDetail => _storeSummary.value;

  bool get isLoadingstoreSummary => _isLoadingstoreSummary.value;

  /* ------------------------------------------------------ */
  /* Method ----------------------------------------------- */
  /* ------------------------------------------------------ */
  @override
  void onInit() {
    super.onInit();

    // DI
    id = Get.arguments['id'];

    // Private Fields
    _searchText = '';

    _storeSummary = storeSummaryState.initial().obs;

    _isLoadingstoreSummary = true.obs;

  }

  @override
  void onReady() {
    super.onReady();

    _fetchstoreSummary();
  }

  /// 혜윰터 요약 정보 가져오기
  void _fetchstoreSummary() async {
    _isLoadingstoreSummary.value = true;

    _isLoadingstoreSummary.value = false;
  }

  /// 검색어 변경 시 호출되는 함수
  void onChangedSearchText(String newString) {
    _searchText = newString;
  }
}
