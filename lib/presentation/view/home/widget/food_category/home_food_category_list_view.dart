import 'package:farm04_modeul/app/config/app_routes.dart';
import 'package:farm04_modeul/core/view/base_widget.dart';
import 'package:farm04_modeul/presentation/view/home/widget/food_category/component/home_food_category_item.dart';
import 'package:farm04_modeul/presentation/view_model/home/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeFoodCategoryListView extends BaseWidget<HomeViewModel>{
  const HomeFoodCategoryListView({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Obx(
        () {
          List<HomeFoodCategoryItemState> items = viewModel.homeFoodCategoryOverviewList;

          return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, mainAxisSpacing: 5),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return HomeFoodCategoryItem(
                  state: items[index],
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.HOME_LIST_DETAIL,
                      arguments: {
                        'id': items[index].id,
                      }
                    );
                  },
                );
              }
          );
        }
    );
  }
}