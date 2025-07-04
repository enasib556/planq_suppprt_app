import 'package:flutter/material.dart';

import 'features/battery/presentation/views/widgets/battery_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diagnostics Demo',
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(), // ← افصلها في ويدجت تانية
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('System Diagnostics')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BatteryScreen()),
            );
          },
          child: const Text('Battery Diagnostics'),
        ),
      ),
    );
  }
}
