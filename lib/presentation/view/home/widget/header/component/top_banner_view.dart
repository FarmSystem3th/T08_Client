import 'package:farm04_modeul/presentation/view_model/home/header/home_header_view_model.dart';
import 'package:flutter/material.dart';

class TopBannerView extends StatelessWidget {
  final HomeTopBannerItemState item;

  const TopBannerView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(item.assetsPath), // 이미지 경로를 지정하세요
          fit: BoxFit.cover, // 이미지가 컨테이너에 꽉 차도록 설정
        ),
      ),
    );
  }
}