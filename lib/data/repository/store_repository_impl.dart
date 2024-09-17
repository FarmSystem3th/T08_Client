import 'package:get/get.dart';
import 'package:farm04_modeul/core/wrapper/response_wrapper.dart';
import 'package:farm04_modeul/core/wrapper/state_wrapper.dart';
import 'package:farm04_modeul/data/provider/store/store_remote_provider.dart';
import 'package:farm04_modeul/domain/condition/store/read_store_summary_condition.dart';
import 'package:farm04_modeul/domain/entity/store/store_detail_state.dart';
import 'package:farm04_modeul/domain/repository/store_repository.dart';

class DeliveryeumRepositoryImpl extends GetxService
    implements storeRepository {
  late final storeRemoteProvider _storeRemoteProvider;

  @override
  void onInit() {
    super.onInit();
    _storeRemoteProvider = Get.find<storeRemoteProvider>();
  }

  // readstoreSummary - 혜윰터 Summary 받ㄱ ㅣ
  // // /api/v1/stores/{storeId}/summaries
  @override
  Future<StateWrapper<storeSummaryState>> readstoreSummary(
    ReadstoreSummaryCondition condition,
  ) async {
    ResponseWrapper response =
        await _storeRemoteProvider.getstoreSummary(
      storeId: condition.storeId,
    );

    if (!response.success) {
      return StateWrapper(
        success: false,
        message: response.message,
      );
    }

    Map<String, dynamic> storeSummary = response.data!;
    storeSummaryState state =
        storeSummaryState.fromJson(storeSummary);

    return StateWrapper.fromResponseAndState(response, state);
  }

}
