import 'package:farm04_modeul/presentation/view_model/home/food_category/home_food_category_view_model.dart';
import 'package:get/get.dart';

class HomeFoodCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeFoodCategoryViewModel>(
          () =>HomeFoodCategoryViewModel(),
    );
  }
}