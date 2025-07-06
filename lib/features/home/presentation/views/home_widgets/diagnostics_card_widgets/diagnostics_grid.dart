import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/text_styles.dart';

class DiagnosticsGrid extends StatelessWidget {
  final List<Map<String, String>> diagnostics;

  const DiagnosticsGrid({super.key, required this.diagnostics});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.h,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        crossAxisSpacing: 8.w,
        mainAxisSpacing: 9.h,
        children: diagnostics.map((item) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50.w,
                height: 50.h,
                child: Image.asset(
                  item['icon']!,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                item['label']!,
                textAlign: TextAlign.center,
                style: TextStyles.font15MediumBlack.copyWith(
                  fontSize: 14.spMin,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
