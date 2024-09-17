import 'package:get/get.dart';
import 'package:farm04_modeul/app/config/app_routes.dart';
import 'package:farm04_modeul/presentation/view/root/root_screen.dart';
import 'package:farm04_modeul/presentation/view_model/store/store_binding.dart';
import 'package:farm04_modeul/presentation/view_model/root/root_binding.dart';

abstract class AppPages {
  static List<GetPage> data = [
    GetPage(
      name: AppRoutes.ROOT,
      page: () => const RootScreen(),
      bindings: [
        RootBinding(),
        DeliveryeumBinding(),
      ],
    ),
  ];
}
