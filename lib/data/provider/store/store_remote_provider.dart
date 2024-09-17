import 'package:farm04_modeul/core/wrapper/response_wrapper.dart';

// 로컬 API 정의하기
abstract class storeRemoteProvider {
  // Todo : 요약(Summary) 조회하기
  // /api/v1/stores/{storeId}/summaries
  Future<ResponseWrapper> getstoreSummary({
    required int storeId,
  });
}
