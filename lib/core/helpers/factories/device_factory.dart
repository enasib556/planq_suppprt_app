import '../../../features/battery/domain/battery_service.dart';


abstract class DeviceFactory {
  BatteryService createBatteryService();
}
