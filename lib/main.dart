import 'package:flutter/material.dart';
import 'package:farm04_modeul/data/factory/storage_factory.dart';
import 'package:farm04_modeul/main_app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  await onInitSystem();
  runApp(const MainApp());
}

Future<void> onInitSystem() async {
  // Widget Binding
  WidgetsFlutterBinding.ensureInitialized();

  // DateTime Formatting
  await initializeDateFormatting();
  tz.initializeTimeZones();

  // Storage & Database
  await StorageFactory.onInit();
}
