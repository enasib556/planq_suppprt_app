import 'dart:io';
import 'package:process_run/process_run.dart';

import 'battery_service.dart';

class WindowsBatteryService implements BatteryService {
  @override
  Future<String?> generateReport() async {
    final shell = Shell();

    try {
      final result = await shell.run('powercfg /batteryreport');

      final output = result.outText;
      print("OUTPUT:\n$output");

      // مطابقة أي مسار فيه battery-report.html
      final match = RegExp(r'([\w:\\\/.-]*battery-report\.html)', caseSensitive: false)
          .firstMatch(output);

      if (match != null) {
        final path = match.group(1)?.trim();
        print("Matched path: $path");

        return path;
      }

      return null;
    } catch (e) {
      print('Battery report error: $e');
      return null;
    }
  }
}
