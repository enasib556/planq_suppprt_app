import 'package:flutter/material.dart';

import '../../../../../core/helpers/platformService.dart';


class BatteryScreen extends StatefulWidget {
  const BatteryScreen({super.key});
  @override
  State<BatteryScreen> createState() => _BatteryScreenState();
}

class _BatteryScreenState extends State<BatteryScreen> {
  String? _path;
  String? _error;

  Future<void> _generate() async {
    setState(() => _error = null);

    final service = PlatformService.factory.createBatteryService();
    final path = await service.generateReport();

    if (path == null) {
      setState(() => _error = 'لم يُنشأ التقرير. تأكد من الصلاحيات.');
    } else {
      setState(() => _path = path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Battery Report')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _generate,
              child: const Text('Generate Battery Report'),
            ),
            const SizedBox(height: 20),
            if (_error != null) Text(_error!, style: const TextStyle(color: Colors.red)),
            if (_path != null) Expanded(child: SelectableText('Report saved at:\n$_path')),
          ],
        ),
      ),
    );
  }
}
