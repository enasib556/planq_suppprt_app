import 'dart:io';
import 'package:process_run/process_run.dart';

import 'mouse_service.dart';

class WindowsMouseService implements MouseService {
  @override
  Future<String?> generateReport() async {
    final shell = Shell();

    try {
      // Get mouse devices using PowerShell
      final result = await shell.run('powershell -Command '
          '"Get-WmiObject -Class Win32_PointingDevice | '
          'Select-Object Name, DeviceID, Manufacturer, Description, Status, '
          'NumberOfButtons, Handedness, PointingType | '
          'ConvertTo-Html '
          '-Head \'<style>'
          'body { font-family: Arial, sans-serif; margin: 20px; } '
          'h1 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 10px; } '
          'table { border-collapse: collapse; width: 100%; margin-top: 20px; } '
          'th, td { border: 1px solid #ddd; padding: 12px; text-align: left; } '
          'th { background-color: #3498db; color: white; font-weight: bold; } '
          'tr:nth-child(even) { background-color: #f2f2f2; } '
          'tr:hover { background-color: #e8f4fd; } '
          '.status-ok { color: #27ae60; font-weight: bold; } '
          '.status-error { color: #e74c3c; font-weight: bold; } '
          '</style>\' '
          '-Title \'Mouse Diagnostics Report\' | '
          'Out-File -FilePath mouse-report.html -Encoding UTF8"');

      final directory = Directory.current.path;
      final path = '$directory\\mouse-report.html';

      if (await File(path).exists()) {
        print('Mouse report generated successfully at: $path');
        return path;
      }
      
      print('Failed to generate mouse report');
      return null;
    } catch (e) {
      print('Mouse report error: $e');
      return null;
    }
  }
} 