import 'dart:io';
import 'package:process_run/process_run.dart';

import 'bios_service.dart';

class LinuxBIOSService implements BIOSService {
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
    <title>BIOS Diagnostics Report</title>
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
    <h1>BIOS Diagnostics Report</h1>
    <h2>BIOS Information</h2>
    <table>
        <tr>
            <th>Property</th>
            <th>Value</th>
            <th>Status</th>
        </tr>
''';

      // Get BIOS information using Linux commands
      final biosVendorResult = await shell.run('cat /sys/class/dmi/id/bios_vendor 2>/dev/null || echo "N/A"');
      final biosVersionResult = await shell.run('cat /sys/class/dmi/id/bios_version 2>/dev/null || echo "N/A"');
      final biosReleaseResult = await shell.run('cat /sys/class/dmi/id/bios_release 2>/dev/null || echo "N/A"');
      final biosDateResult = await shell.run('cat /sys/class/dmi/id/bios_date 2>/dev/null || echo "N/A"');
      final systemManufacturerResult = await shell.run('cat /sys/class/dmi/id/sys_vendor 2>/dev/null || echo "N/A"');
      final systemProductResult = await shell.run('cat /sys/class/dmi/id/product_name 2>/dev/null || echo "N/A"');

      final biosVendor = biosVendorResult.outText.trim();
      final biosVersion = biosVersionResult.outText.trim();
      final biosRelease = biosReleaseResult.outText.trim();
      final biosDate = biosDateResult.outText.trim();
      final systemManufacturer = systemManufacturerResult.outText.trim();
      final systemProduct = systemProductResult.outText.trim();

      final fullHtmlContent = htmlContent + '''
        <tr><td>BIOS Vendor</td><td>$biosVendor</td><td class="status-ok">Available</td></tr>
        <tr><td>BIOS Version</td><td>$biosVersion</td><td class="status-ok">Available</td></tr>
        <tr><td>BIOS Release</td><td>$biosRelease</td><td class="status-ok">Available</td></tr>
        <tr><td>BIOS Date</td><td>$biosDate</td><td class="status-ok">Available</td></tr>
        <tr><td>System Manufacturer</td><td>$systemManufacturer</td><td class="status-ok">Available</td></tr>
        <tr><td>System Product</td><td>$systemProduct</td><td class="status-ok">Available</td></tr>
    </table>
</body>
</html>
''';

      final directory = Directory.current.path;
      final path = '$directory/bios-report.html';
      
      await File(path).writeAsString(fullHtmlContent);

      if (await File(path).exists()) {
        print('BIOS report generated successfully at: $path');
        return path;
      }
      
      print('Failed to generate BIOS report');
      return null;
    } catch (e) {
      print('BIOS report error: $e');
      return null;
    }
  }
} 