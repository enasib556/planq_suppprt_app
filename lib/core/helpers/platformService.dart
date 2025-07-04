import 'dart:io';

import 'factories/device_factory.dart';
import 'factories/linux_factory.dart';
import 'factories/windows_factory.dart';


class PlatformService {
  static final DeviceFactory factory = _detectFactory();

  static DeviceFactory _detectFactory() {
    if (Platform.isWindows) return WindowsFactory();
    if (Platform.isLinux)   return LinuxFactory();
    throw UnsupportedError('Unsupported OS');
  }
}
