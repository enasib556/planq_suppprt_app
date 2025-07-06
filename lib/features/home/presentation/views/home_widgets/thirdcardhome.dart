import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/theming/colors.dart';
import 'package:windows_desktop_app/core/theming/images.dart';
import 'package:windows_desktop_app/core/theming/text_styles.dart';

class Thirdcardhome extends StatelessWidget {
  const Thirdcardhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 50),
      child: Container(
        width: 400,
        height: double.infinity,
        decoration: BoxDecoration(
          color: ColorsManager.whitecard,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Active",
                style: TextStyles.font12WhiteBold,
                textAlign: TextAlign.right,
              ),
              //title
              Text(
                "Remote Support",
                textAlign: TextAlign.start,
                style: TextStyles.font20WhiteBold,
              ),
              Text(
                "service plan Due: 31 December 2025",
                textAlign: TextAlign.start,
                style: TextStyles.font8WhiteBold,
              ),
              const SizedBox(height: 50),
              //image
              Center(
                child: Image(
                  image: AssetImage(AppImages.Remotesupport),
                  height: 250,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Request an Online \n support session",
                textAlign: TextAlign.center,
                style: TextStyles.font20WhiteBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
