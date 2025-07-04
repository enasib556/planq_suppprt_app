import 'battery_service.dart';

class LinuxBatteryService implements BatteryService {
  @override
  Future<String?> generateReport() async {
    // TODO: استخدم upower أو acpi
    return null;
  }
}
