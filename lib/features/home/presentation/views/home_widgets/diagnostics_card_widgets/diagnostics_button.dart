import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosticsButton extends StatelessWidget {
  const DiagnosticsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 10.h),
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        icon: const Icon(Icons.support_agent, color: Colors.white),
        label: const Text(
          "Open Support Ticket",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
