import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:farm04_modeul/core/view/base_screen.dart';
import 'package:farm04_modeul/presentation/view_model/store_detail/store_detail_view_model.dart';

class storeDetailScreen extends BaseScreen<storeDetailViewModel> {
  const storeDetailScreen({super.key});

  final int id = 1;

  @override
  bool get wrapWithInnerSafeArea => true;

  @override
  bool get setTopInnerSafeArea => true;

  @override
  bool get setBottomInnerSafeArea => false;

  @override
  Widget buildBody(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ExtendedNestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverToBoxAdapter(
              child: SizedBox(height: 8.0),
            ),
          ];
        },
        body: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
