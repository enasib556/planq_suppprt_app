import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/theming/colors.dart';
import 'package:windows_desktop_app/core/theming/images.dart';
import 'package:windows_desktop_app/core/theming/text_styles.dart';

class Secondcardhome extends StatelessWidget {
  const Secondcardhome({super.key});

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
                "System Diagnostics",
                textAlign: TextAlign.center,
                style: TextStyles.font20WhiteBold,
              ),
              const SizedBox(height: 12.5),
              Text(
                "Generate Full Diagnostic Report",
                textAlign: TextAlign.end,
                style: TextStyles.font8WhiteBold,
              ),
              const SizedBox(height: 5),
              //icon
              SizedBox(
                height: 400,
                child: GridView.count(
                  crossAxisCount: 3,

                  children: [
                    Image.asset(AppImages.battery, width: 10, height: 10),
                    Image.asset(AppImages.Laptop),
                    Image.asset(AppImages.ram),
                    Image.asset(AppImages.VGA),
                    Image.asset(AppImages.SCREEN),
                    Image.asset(AppImages.CONNECTIVITY),
                    Image.asset(AppImages.KEYBOARD),
                    Image.asset(AppImages.MOUSE),
                    Image.asset(AppImages.COOLING),
                    Image.asset(AppImages.PORTS),
                    Image.asset(AppImages.BIOS),
                  ],
                ),
              ),

              //button
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Open Support Ticket",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
