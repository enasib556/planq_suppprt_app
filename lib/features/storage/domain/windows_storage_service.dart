import 'dart:io';
import 'package:process_run/process_run.dart';

import 'storage_service.dart';

class WindowsStorageService implements StorageService {
  @override
  Future<String?> generateReport() async {
    final shell = Shell();

    try {
      final result = await shell.run('powershell -Command '
          '"Get-PSDrive | ConvertTo-Html  '
          '-Head \'<style>'
          'table { border-collapse: collapse; width: 100%; font-family: Arial; } '
          'th, td { border: 1px solid #999; padding: 8px; text-align: left; } '
          'th { background-color: #f2f2f2; }'
          '</style>\' | Out-File -FilePath storage-report.html"');



      final directory = Directory.current.path;
      final path = '$directory\\storage-report.html';

      if (await File(path).exists()) return path;
      return null;
    } catch (e) {
      print('Storage report error: $e');
      return null;
    }
  }
}
