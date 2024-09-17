import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:farm04_modeul/core/view/base_screen.dart';
import 'package:farm04_modeul/presentation/view/store/widget/store_overview/store_overview_list_view.dart';
import 'package:farm04_modeul/presentation/view_model/store/store_view_model.dart';

class StoreScreen extends BaseScreen<StoreViewModel> {
  const StoreScreen({super.key});

  @override
  bool get wrapWithInnerSafeArea => true;

  @override
  bool get setTopInnerSafeArea => true;

  @override
  bool get setBottomInnerSafeArea => false;

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: StoreOverviewListView(),
          ),
          SizedBox(height: GetPlatform.isAndroid ? 84 : 112),
        ],
      ),
    );
  }
}
