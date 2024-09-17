import 'package:farm04_modeul/presentation/view_model/store/store_view_model.dart';
import 'package:get/get.dart';

class DeliveryeumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreViewModel>(() => StoreViewModel());
  }
}
