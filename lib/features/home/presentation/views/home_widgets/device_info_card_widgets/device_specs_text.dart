import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/theming/font_weight_helper.dart';

import '../../../../../../core/theming/text_styles.dart';

class DeviceSpecsText extends StatelessWidget {
  const DeviceSpecsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '''
PlanQ LAPTOP N20 art
16" IPS 2.5K 165Hz screen
Intel Core i7-13650H
32GB DDR4 (Dual Channel)
1TB SSD
New Generation Network Card Wifi 6
Fingerprint recognition unlocking
Dual Fan Cooling 
''',
      textAlign: TextAlign.center,
      style: TextStyles.font15BlackBold.copyWith(
        fontWeight: FontWeightHelper.medium
      ),
    );
  }
}
