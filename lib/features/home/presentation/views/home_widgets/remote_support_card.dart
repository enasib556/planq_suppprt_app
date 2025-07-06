import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:windows_desktop_app/core/theming/colors.dart';
import 'package:windows_desktop_app/core/theming/images.dart';
import 'package:windows_desktop_app/core/theming/text_styles.dart';
import '../../../../../core/theming/font_weight_helper.dart';

class RemoteSupportCard extends StatelessWidget {
  const RemoteSupportCard({super.key});

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
              blurRadius: 10.r,
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.circle,size: 9,color: Color(0xff008000),),
                    SizedBox(width:5.w ,),
                    Text(
                      "Active",
                      style: TextStyles.font10GreenBold,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              // Title
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Remote Support",
                      textAlign: TextAlign.start,
                      style: TextStyles.font23BlackBold.copyWith(
                          fontWeight: FontWeightHelper.medium,
                          fontSize: 25.spMin
                      ),
                    ),
                    Text(
                      "service plan Due: 31 December 2025",
                      textAlign: TextAlign.start,
                      style: TextStyles.font12BlackMedium
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              // Image
              Center(
                child: Image.asset(
                  AppImages.Remotesupport,
                  height: 250.h,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 40.h),
              // Footer Text
              Text(
                "Request an Online \n support session",
                textAlign: TextAlign.center,
                style: TextStyles.font23BlackBold.copyWith(
                  fontWeight: FontWeightHelper.medium
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
