import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/routing/routes.dart';
import 'package:windows_desktop_app/features/battery/presentation/views/widgets/battery_screen.dart';
import '../../features/home/presentation/views/home_screen.dart';
import '../../features/storage/presentation/views/StorageScreen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.HomeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.batteryScreen:
        return MaterialPageRoute(
          builder: (_) => const BatteryScreen(),
        );
      case Routes.storageScreen:
        return MaterialPageRoute(
          builder: (_) => const StorageScreen(),
        );
      default:
        return null;
    }
  }
}