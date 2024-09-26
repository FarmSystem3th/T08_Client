import 'package:farm04_modeul/app/config/app_routes.dart';
import 'package:farm04_modeul/app/config/font_system.dart';
import 'package:farm04_modeul/presentation/widget/image/svg_image_box.dart';
import 'package:flutter/material.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:get/get.dart';

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({
    super.key,
    this.actions = const <Widget>[],
    required this.selectedAddress,
  });

  final List<Widget> actions;
  final String selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Row(
          children: [
            Text(
            selectedAddress, // 선택된 주소 표시
            style: FontSystem.APPBAR,
          ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: () {
                Get.toNamed(
                  AppRoutes.ROOT,
                  arguments: {
                    'address': selectedAddress, // 나중에 주소 선택 창으로 이동
                  },
                );
              },
              child: SvgImageBox(
                assetPath: 'assets/icons/app_bar_arrow_dropdown.svg',
                width: 10,
                height: 8,
                color: ColorSystem.black,
              ),
            ),
          ],
        ),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: actions,
      ),
    );
  }
}
