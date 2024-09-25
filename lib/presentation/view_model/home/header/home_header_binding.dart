import 'package:farm04_modeul/presentation/view_model/home/header/home_header_view_model.dart';
import 'package:get/get.dart';

class HomeHeaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeHeaderViewModel>(
          () => HomeHeaderViewModel(),
    );
  }
}