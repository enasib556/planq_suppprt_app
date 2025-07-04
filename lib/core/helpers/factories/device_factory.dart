import '../../../features/battery/domain/battery_service.dart';
import '../../../features/storage/domain/storage_service.dart';


abstract class DeviceFactory {
  BatteryService createBatteryService();
  StorageService createStorageService();
}
