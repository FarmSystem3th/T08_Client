import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImageBox extends StatelessWidget {
  const SvgImageBox({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.color,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
  });

  final String assetPath;
  final double? width;
  final double? height;
  final Color? color;
  final EdgeInsets margin;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    if (color == null) {
      return Container(
        margin: margin,
        padding: padding,
        child: SvgPicture.asset(
          assetPath,
          width: width,
          height: height,
        ),
      );
    }

    return Container(
      margin: margin,
      padding: padding,
      child: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString(assetPath),
        builder: (context, snapshot) {
          String data = snapshot.data ??
              "<svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 1 1\"></svg>";

          return SvgPicture.string(
            data.replaceAll(
              "#000000",
              '#${color!.value.toRadixString(16).substring(2).padLeft(6, '0').toUpperCase()}',
            ),
            width: width,
            height: height,
          );
        },
      ),
    );
  }
}
