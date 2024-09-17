import 'package:get/get.dart';
import 'package:farm04_modeul/presentation/view_model/root/root_view_model.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootViewModel>(
      () => RootViewModel(),
    );
  }
}
