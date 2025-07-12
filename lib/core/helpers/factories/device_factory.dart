import '../../../features/battery/domain/battery_service.dart';
import '../../../features/storage/domain/storage_service.dart';
import '../../../features/mouse/domain/mouse_service.dart';
import '../../../features/bios/domain/bios_service.dart';


abstract class DeviceFactory {
  BatteryService createBatteryService();
  StorageService createStorageService();
  MouseService createMouseService();
  BIOSService createBIOSService();
}
