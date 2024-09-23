import 'package:farm04_modeul/presentation/view_model/home/home_view_model.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(
          () => HomeViewModel(),
    );
  }
}