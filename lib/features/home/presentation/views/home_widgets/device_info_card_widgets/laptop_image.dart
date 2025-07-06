import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/images.dart';

class LaptopImage extends StatelessWidget {
  const LaptopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.Laptop,
        height: 190.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
