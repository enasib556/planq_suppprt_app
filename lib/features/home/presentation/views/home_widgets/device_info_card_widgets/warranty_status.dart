import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/text_styles.dart';

class WarrantyStatus extends StatelessWidget {
  const WarrantyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.circle, color: Color(0xff008000), size: 9.r),
          SizedBox(width: 5.w),
          Text(
            "Warranty coverage till Nov 2025",
            textAlign: TextAlign.end,
            style: TextStyles.font10GreenBold,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
