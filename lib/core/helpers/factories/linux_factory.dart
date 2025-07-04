import '../../../features/battery/domain/battery_service.dart';
import '../../../features/battery/domain/windows_battery_service.dart';
import 'device_factory.dart';


class WindowsFactory implements DeviceFactory {
  @override
  BatteryService createBatteryService() => WindowsBatteryService();
}
