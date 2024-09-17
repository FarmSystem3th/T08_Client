import 'package:get_storage/get_storage.dart';

class StorageFactory {
  static late final GetStorage _normalStorage;

  static Future<void> onInit() async {
    await GetStorage.init();

    _normalStorage = GetStorage();
  }
}
