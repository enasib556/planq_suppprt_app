import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:windows_desktop_app/core/theming/images.dart';
import 'package:windows_desktop_app/core/theming/text_styles.dart';
import 'package:windows_desktop_app/features/home/presentation/views/home_widgets/device_info_card.dart';
import 'package:windows_desktop_app/features/home/presentation/views/home_widgets/diagnostics_card.dart';
import 'package:windows_desktop_app/features/home/presentation/views/home_widgets/remote_support_card.dart';
import 'SupportSideBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50, child: const SupportSideBar()),
        Expanded(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 40.w,
                      vertical: 20.h,
                    ),
                    child: Image(
                      image: AssetImage(AppImages.PLANQ_LOGO),
                      height: 60,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Welcome Ahmed Tamer',
                      style: TextStyles.font15MediumBlack
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: DeviceInfoCard()),
                      Expanded(child: DiagnosticsCard()),
                      Expanded(child: RemoteSupportCard()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
