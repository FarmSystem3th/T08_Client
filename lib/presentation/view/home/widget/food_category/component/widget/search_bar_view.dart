import 'package:farm04_modeul/presentation/widget/image/svg_image_box.dart';
import 'package:flutter/material.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:get/get.dart';

class SearchBarView extends StatefulWidget {
  const SearchBarView({
    super.key,
  });

  @override
  State<SearchBarView> createState() => _SearchBarViewState();
}

class _SearchBarViewState extends State<SearchBarView> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        onChanged: (value) {
          // 검색어가 있는 경우 icon 추가
        },
        onFieldSubmitted: (value) {
            Get.toNamed('/store-list', arguments: {'name': value});
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0), // 높이, 너비 조절
          hintText: '매장명을 입력해주세요.',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: ColorSystem.black, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
            const BorderSide(color: ColorSystem.primary, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: ColorSystem.black, width: 1.5),
          ),
          hoverColor: ColorSystem.black,
          suffixIcon: Container(
            padding: const EdgeInsets.all(14), // 아이콘 주변에 여백을 추가하여 크기를 조정
            child: SvgImageBox(
              assetPath: 'assets/icons/home_list_search_icon.svg',
              width: 14,
              height: 14,
              color: ColorSystem.black,
            ),
          ),
        ),
        cursorColor: ColorSystem.black,
      ),
    );
  }
}
