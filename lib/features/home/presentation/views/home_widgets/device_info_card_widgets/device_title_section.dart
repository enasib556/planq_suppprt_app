import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/font_weight_helper.dart';
import '../../../../../../core/theming/text_styles.dart';

class DeviceTitleSection extends StatelessWidget {
  const DeviceTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PlanQ Wind Ultra laptop",
            style: TextStyles.font19BlackBold,
          ),
          SizedBox(height: 2.h),
          Text(
            'Model: G5R3-X6TY-WND3\nSerial: 6543-9863-4324',
            style: TextStyles.font12BlackMedium
          ),
        ],
      ),
    );
  }
}
