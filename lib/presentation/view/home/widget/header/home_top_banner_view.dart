import 'package:farm04_modeul/core/view/base_widget.dart';
import 'package:farm04_modeul/presentation/view/home/widget/header/component/top_banner_view.dart';
import 'package:farm04_modeul/presentation/view_model/home/header/home_header_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeTopBannerView extends BaseWidget<HomeHeaderViewModel> {
  HomeTopBannerView({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Obx(
          () {
        List<HomeTopBannerItemState> items = viewModel.homeTopBannerOverviewList;

        return SizedBox(
          width: 400, // Width adjustment
          height: 140, // Height adjustment
          child: Stack(
            children: [
              PageView(
                controller: viewModel.pageController,
                children: items.map((item) =>
                    GestureDetector(
                      onTap: () {
                        // url로 이동
                        if (item.redirectUrl != null) {
                          Get.toNamed(item.redirectUrl);
                        }
                      },
                      child: TopBannerView(item: item),
                    ),
                ).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}