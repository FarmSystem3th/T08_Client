import 'package:farm04_modeul/core/view/base_widget.dart';
import 'package:farm04_modeul/presentation/view_model/home/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFoodCategoryListView extends BaseWidget<HomeViewModel>{
  const HomeFoodCategoryListView({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('This is the Home Food Category List View!'),
      ),
    ); /// 임시 scaffold
  }
}