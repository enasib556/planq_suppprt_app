import '../../../features/battery/domain/battery_service.dart';
import '../../../features/battery/domain/linux_battery_service.dart';
import 'device_factory.dart';


class LinuxFactory implements DeviceFactory {
  @override
  BatteryService createBatteryService() => LinuxBatteryService();
}
