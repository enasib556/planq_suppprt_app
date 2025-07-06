import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:windows_desktop_app/core/theming/colors.dart';
import 'package:windows_desktop_app/core/theming/images.dart';
import 'package:windows_desktop_app/core/theming/text_styles.dart';
import '../../../../../core/theming/font_weight_helper.dart';
import 'diagnostics_card_widgets/diagnostics_button.dart';
import 'diagnostics_card_widgets/diagnostics_grid.dart';

class DiagnosticsCard extends StatelessWidget {
  const DiagnosticsCard({super.key});

  static const List<Map<String, String>> diagnostics = [
    {'icon': AppImages.battery, 'label': 'Battery'},
    {'icon': AppImages.Storage, 'label': 'Storage'},
    {'icon': AppImages.ram, 'label': 'RAM'},
    {'icon': AppImages.VGA, 'label': 'VGA Card'},
    {'icon': AppImages.SCREEN, 'label': 'Screen'},
    {'icon': AppImages.CONNECTIVITY, 'label': 'Connectivity'},
    {'icon': AppImages.KEYBOARD, 'label': 'Keyboard'},
    {'icon': AppImages.MOUSE, 'label': 'Mouse'},
    {'icon': AppImages.COOLING, 'label': 'Cooling'},
    {'icon': AppImages.PORTS, 'label': 'Ports'},
    {'icon': AppImages.CPU, 'label': 'CPU'},
    {'icon': AppImages.BIOS, 'label': 'BIOS'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 60),
      child: Container(
        width: 400.w,
        decoration: BoxDecoration(
          color: ColorsManager.whitecard,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "System Diagnostics",
                textAlign: TextAlign.center,
                style: TextStyles.font23BlackBold.copyWith(
                  fontWeight: FontWeightHelper.medium,
                  fontSize: 25.spMin
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Generate Full Diagnostic Report",
                textAlign: TextAlign.end,
                style: TextStyles.font10GreenBold.copyWith(
                  color: Colors.red[500],
                ),
              ),
              SizedBox(height: 15.h),
              DiagnosticsGrid(diagnostics: diagnostics),
              DiagnosticsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
