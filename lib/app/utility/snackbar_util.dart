import 'package:get/get.dart';
import 'package:farm04_modeul/app/config/color_system.dart';
import 'package:farm04_modeul/core/wrapper/result_wrapper.dart';

abstract class SnackbarUtil {
  static void showConnectionError({
    required ResultWrapper result,
    required String errorTitle,
    required Function() onSuccess,
  }) {
    if (result.success) {
      onSuccess();
      return;
    } else {
      Get.snackbar(
        errorTitle,
        result.message!,
        duration: const Duration(milliseconds: 1500),
        snackPosition: SnackPosition.TOP,
        backgroundColor: ColorSystem.neutral.withOpacity(0.5),
        colorText: ColorSystem.black,
      );
    }
  }
}
