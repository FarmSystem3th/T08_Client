import 'package:farm04_modeul/core/wrapper/state_wrapper.dart';
import 'package:farm04_modeul/domain/condition/store/read_store_summary_condition.dart';
import 'package:farm04_modeul/domain/entity/store/store_detail_state.dart';

abstract class storeRepository {
  // summary 조회
  Future<StateWrapper<storeSummaryState>> readstoreSummary(
      ReadstoreSummaryCondition condition);
}
