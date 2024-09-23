import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/app/config/font_system.dart';
import 'package:farm04_modeul/presentation/view_model/home/home_view_model.dart';
import 'package:farm04_modeul/presentation/widget/image/svg_image_box.dart';
import 'package:flutter/material.dart';

class HomeFoodCategoryItem extends StatelessWidget {
  const HomeFoodCategoryItem({
    super.key,
    required this.state,
    required this.onTap,
  });

  final HomeFoodCategoryItemState state;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgImageBox(
              assetPath: state.assetsPath,
              width: 45,
              height: 45,
              color: ColorSystem.primary.shade500
          ),
          Text(
            state.name,
            style: FontSystem.Sub4Bold,
          )
        ],
      ),
    );
  }
}