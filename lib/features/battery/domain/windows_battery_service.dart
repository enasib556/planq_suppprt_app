import 'dart:io';

import 'package:process_run/process_run.dart';

import 'battery_service.dart';

class WindowsBatteryService implements BatteryService {
  @override
  Future<String?> generateReport() async {
    final shell = Shell();

    try {
      // ❶ توليد التقرير
      await shell.run('powercfg /batteryreport');

      // ❷ المسار الافتراضي للتقرير
      final user = Platform.environment['USERNAME'];
      final path = 'C:\\Users\\$user\\battery-report.html';

      if (await File(path).exists()) {
        return path;
      }
      return null; // لم يُنشأ
    } catch (e) {
      print('Battery report error: $e');
      return null;
    }
  }
}
