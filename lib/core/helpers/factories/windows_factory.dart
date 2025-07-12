import 'package:windows_desktop_app/features/storage/domain/storage_service.dart';

import '../../../features/battery/domain/battery_service.dart';
import '../../../features/battery/domain/windows_battery_service.dart';
import '../../../features/storage/domain/windows_storage_service.dart';
import '../../../features/mouse/domain/mouse_service.dart';
import '../../../features/mouse/domain/windows_mouse_service.dart';
import '../../../features/bios/domain/bios_service.dart';
import '../../../features/bios/domain/windows_bios_service.dart';
import 'device_factory.dart';


class WindowsFactory implements DeviceFactory {
  @override
  BatteryService createBatteryService() => WindowsBatteryService();

  @override
  StorageService createStorageService() => WindowsStorageService();

  @override
  MouseService createMouseService() => WindowsMouseService();

  @override
  BIOSService createBIOSService() => WindowsBIOSService();
}
