import 'package:get/get.dart';
import 'package:farm04_modeul/core/wrapper/response_wrapper.dart';
import 'package:farm04_modeul/data/provider/store/store_remote_provider.dart';

class DeliveryeumRemoteProviderImpl implements storeRemoteProvider {
  // 로컬 JSON 파일 경로
  // -------- 배민 홈 화면 카테고리 목록 조회

  // JSON 파일에서 데이터를 읽어오는 헬퍼 메소드
  // Todo : 요약(Summary) 조회하기
  // /api/v1/stores/{storeId}/summaries
  @override
  Future<ResponseWrapper> getstoreSummary({
    required int storeId,
  }) async {

    Response response = await get(
      "/api/v1/stores/$storeId/summaries",
      headers: '',
    );

    // 데이터 json 으로 getstoreSummary로 전송
    return ResponseWrapper.fromJson(response.body);
  }

  // 임시 GET METHOD
  get(String s, {required String headers}) {}
}
