# Mouse and BIOS Diagnostics Implementation

## Overview
This document describes the implementation of Mouse and BIOS diagnostics features for the PlanQ Support System desktop application.

## Architecture

### Domain Layer
- **MouseService** - Abstract interface for mouse diagnostics
- **BIOSService** - Abstract interface for BIOS diagnostics

### Platform-Specific Implementations

#### Windows
- **WindowsMouseService** - Uses PowerShell to detect mouse devices via WMI
- **WindowsBIOSService** - Uses PowerShell to get BIOS information via WMI

#### Linux
- **LinuxMouseService** - Uses Linux commands to detect mouse devices
- **LinuxBIOSService** - Uses Linux DMI commands to get BIOS information

### Factory Pattern
- **DeviceFactory** - Abstract factory interface
- **WindowsFactory** - Creates Windows-specific services
- **LinuxFactory** - Creates Linux-specific services

## Features

### Mouse Diagnostics
- Detects connected mouse devices
- Shows device information (name, manufacturer, status)
- Generates HTML reports with device details
- Supports both USB and system mouse devices

### BIOS Diagnostics
- Retrieves BIOS version and manufacturer information
- Shows system manufacturer and product details
- Generates comprehensive BIOS reports
- Displays release date and serial number information

## Usage

### Navigation
1. Open the PlanQ Support System application
2. Navigate to the "System Diagnostics" card
3. Click on the "Mouse" or "BIOS" icon
4. The application will navigate to the respective diagnostic screen

### Generating Reports
1. On the diagnostic screen, click "Generate [Mouse/BIOS] Report"
2. The system will create an HTML report file
3. Click "Open Report" to view the generated report in your default browser

## File Structure

```
lib/
├── features/
│   ├── mouse/
│   │   ├── domain/
│   │   │   ├── mouse_service.dart
│   │   │   ├── windows_mouse_service.dart
│   │   │   └── linux_mouse_service.dart
│   │   └── presentation/
│   │       └── views/
│   │           └── mouse_screen.dart
│   └── bios/
│       ├── domain/
│       │   ├── bios_service.dart
│       │   ├── windows_bios_service.dart
│       │   └── linux_bios_service.dart
│       └── presentation/
│           └── views/
│               └── bios_screen.dart
└── core/
    └── helpers/
        └── factories/
            ├── device_factory.dart (updated)
            ├── windows_factory.dart (updated)
            └── linux_factory.dart (updated)
```

## Technical Details

### Mouse Diagnostics Commands

#### Windows
```powershell
Get-WmiObject -Class Win32_PointingDevice | 
Select-Object Name, DeviceID, Manufacturer, Description, Status, 
NumberOfButtons, Handedness, PointingType
```

#### Linux
```bash
cat /proc/bus/input/devices | grep -i mouse
lsusb | grep -i mouse
ls /dev/input/mouse*
```

### BIOS Diagnostics Commands

#### Windows
```powershell
Get-WmiObject -Class Win32_BIOS | 
Select-Object Name, Version, Manufacturer, ReleaseDate, 
SerialNumber, SMBIOSBIOSVersion, SMBIOSMajorVersion, 
SMBIOSMinorVersion, Status
```

#### Linux
```bash
cat /sys/class/dmi/id/bios_vendor
cat /sys/class/dmi/id/bios_version
cat /sys/class/dmi/id/bios_release
cat /sys/class/dmi/id/bios_date
```

## Integration

The Mouse and BIOS diagnostics are fully integrated with the existing application:

1. **Routing** - Added routes for `/mouseScreen` and `/biosScreen`
2. **Navigation** - Updated diagnostics grid to be clickable
3. **Factory Pattern** - Extended device factories to create mouse and BIOS services
4. **Platform Detection** - Automatically uses the correct implementation based on OS

## Testing

To test the implementation:

1. Run the application: `flutter run -d windows`
2. Navigate to the diagnostics section
3. Click on Mouse or BIOS icons
4. Generate reports and verify they open correctly

## Future Enhancements

- Add more detailed mouse diagnostics (DPI, polling rate, etc.)
- Include BIOS update recommendations
- Add comparison with known good configurations
- Implement real-time monitoring capabilities 