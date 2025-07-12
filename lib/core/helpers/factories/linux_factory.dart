import '../../../features/battery/domain/battery_service.dart';
import '../../../features/battery/domain/linux_battery_service.dart';
import '../../../features/storage/domain/linux_storage_service.dart';
import '../../../features/storage/domain/storage_service.dart';
import '../../../features/mouse/domain/mouse_service.dart';
import '../../../features/mouse/domain/linux_mouse_service.dart';
import '../../../features/bios/domain/bios_service.dart';
import '../../../features/bios/domain/linux_bios_service.dart';
import 'device_factory.dart';


class LinuxFactory implements DeviceFactory {
  @override
  BatteryService createBatteryService() => LinuxBatteryService();

  @override
  StorageService createStorageService() => LinuxStorageService();

  @override
  MouseService createMouseService() => LinuxMouseService();

  @override
  BIOSService createBIOSService() => LinuxBIOSService();
}
