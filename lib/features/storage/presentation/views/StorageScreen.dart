import 'dart:io';
import 'package:flutter/material.dart';
import 'package:process_run/process_run.dart';

import '../../../../../core/helpers/platformService.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({super.key});

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  String? _path;
  String? _error;

  Future<void> _generate() async {
    setState(() {
      _path = null;
      _error = null;
    });

    final service = PlatformService.factory.createStorageService();
    final path = await service.generateReport();

    if (path == null) {
      setState(() => _error = '❌ لم يُنشأ تقرير التخزين. تأكد من الصلاحيات.');
    } else {
      setState(() => _path = path);
    }
  }

  void _openReport() async {
    if (_path != null) {
      await Process.run('start', [_path!], runInShell: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Storage Report')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _generate,
              child: const Text('Generate Storage Report'),
            ),
            const SizedBox(height: 20),
            if (_error != null)
              Text(_error!, style: const TextStyle(color: Colors.red)),
            if (_path != null) ...[
              SelectableText('📄 Report saved at:\n$_path'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _openReport,
                child: const Text('Open Report'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
