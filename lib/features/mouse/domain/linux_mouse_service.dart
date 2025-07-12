import 'dart:io';
import 'package:process_run/process_run.dart';

import 'mouse_service.dart';

class LinuxMouseService implements MouseService {
  @override
  Future<String?> generateReport() async {
    final shell = Shell();

    try {
      // Create HTML report file
      final htmlContent = '''
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mouse Diagnostics Report</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 10px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #3498db; color: white; font-weight: bold; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        tr:hover { background-color: #e8f4fd; }
        .status-ok { color: #27ae60; font-weight: bold; }
        .status-error { color: #e74c3c; font-weight: bold; }
    </style>
</head>
<body>
    <h1>Mouse Diagnostics Report</h1>
    <h2>Mouse Devices</h2>
    <table>
        <tr>
            <th>Device</th>
            <th>Type</th>
            <th>Status</th>
        </tr>
''';

      // Get mouse information using Linux commands
      final mouseDevicesResult = await shell.run('cat /proc/bus/input/devices | grep -i mouse | wc -l');
      final usbMiceResult = await shell.run('lsusb | grep -i mouse | wc -l');
      final mouseEventsResult = await shell.run('ls /dev/input/mouse* 2>/dev/null | wc -l');

      final mouseDevicesCount = mouseDevicesResult.outText.trim();
      final usbMiceCount = usbMiceResult.outText.trim();
      final mouseEventsCount = mouseEventsResult.outText.trim();

      final fullHtmlContent = htmlContent + '''
        <tr><td>Input Devices</td><td>System</td><td class="status-ok">$mouseDevicesCount devices found</td></tr>
        <tr><td>USB Mice</td><td>USB</td><td class="status-ok">$usbMiceCount devices found</td></tr>
        <tr><td>Mouse Events</td><td>Events</td><td class="status-ok">$mouseEventsCount event files</td></tr>
    </table>
</body>
</html>
''';

      final directory = Directory.current.path;
      final path = '$directory/mouse-report.html';
      
      await File(path).writeAsString(fullHtmlContent);

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