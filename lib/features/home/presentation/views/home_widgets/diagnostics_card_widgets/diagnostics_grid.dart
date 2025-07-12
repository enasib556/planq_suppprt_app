import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/routing/routes.dart';

class DiagnosticsGrid extends StatelessWidget {
  final List<Map<String, String>> diagnostics;

  const DiagnosticsGrid({super.key, required this.diagnostics});

  void _navigateToDiagnostic(BuildContext context, String label) {
    String route = '';
    switch (label.toLowerCase()) {
      case 'battery':
        route = Routes.batteryScreen;
        break;
      case 'storage':
        route = Routes.storageScreen;
        break;
      case 'mouse':
        route = Routes.mouseScreen;
        break;
      case 'bios':
        route = Routes.biosScreen;
        break;
      default:
        // For other diagnostics that don't have screens yet
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$label diagnostics coming soon!'),
            duration: const Duration(seconds: 2),
          ),
        );
        return;
    }
    
    Navigator.of(context).pushNamed(route);
  }

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
          return GestureDetector(
            onTap: () => _navigateToDiagnostic(context, item['label']!),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.transparent,
              ),
              child: Column(
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
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
