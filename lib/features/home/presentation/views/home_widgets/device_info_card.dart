import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:windows_desktop_app/core/theming/colors.dart';
import 'device_info_card_widgets/device_specs_text.dart';
import 'device_info_card_widgets/device_title_section.dart';
import 'device_info_card_widgets/laptop_image.dart';
import 'device_info_card_widgets/view_specifications_link.dart';
import 'device_info_card_widgets/warranty_status.dart';

class DeviceInfoCard extends StatelessWidget {
  const DeviceInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 60),
      child: Container(
        width: 350.w,
        decoration: BoxDecoration(
          color: ColorsManager.whitecard,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.r,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            WarrantyStatus(),
            SizedBox(height: 10.h),
            DeviceTitleSection(),
            SizedBox(height: 6.h),
            ViewSpecificationsLink(),
            SizedBox(height: 12.h),
            LaptopImage(),
            SizedBox(height: 12.h),
            DeviceSpecsText(),
          ],
        ),
      ),
    );
  }
}
