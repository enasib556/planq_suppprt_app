import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/theming/colors.dart';
import 'package:windows_desktop_app/core/theming/images.dart';
import 'package:windows_desktop_app/core/theming/text_styles.dart';

class Firstcardhome extends StatelessWidget {
  const Firstcardhome({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ImageIcon(AssetImage(AppImages.Active), size: 10),
                  const SizedBox(width: 5.5),
                  Text(
                    "Warranty coverage till November 2025",
                    textAlign: TextAlign.end,
                    style: TextStyles.font12WhiteBold,
                  ),
                ],
              ),
              const SizedBox(height: 12.5),
              Text(
                "Plan Q Wind Ultra laptop",
                textAlign: TextAlign.center,
                style: TextStyles.font16WhiteBold,
              ),
              const SizedBox(height: 5),
              Text(
                'Model Number : G5R3-X6TY-WND3\n Serial Number : 6543-9863-4324',
                textAlign: TextAlign.center,
                style: TextStyles.font8WhiteBold,
              ),
              const SizedBox(height: 2.5),
              Text(
                "View full specifications",
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.red[900], fontSize: 9),
              ),
              const SizedBox(height: 10),
              Image(image: AssetImage(AppImages.Laptop), height: 150),
              const SizedBox(height: 10),
              Text(
                '''
                   Plan Q LAPTOP N20 art \n 
                   16 inch ips 2.5k 165hz screen \n
                   13th core i7-13650H \n
                   32GB Dual channel DDR4 \n
                         1TB SSD 
                                ''',
                textAlign: TextAlign.center,
                style: TextStyles.font15WhiteBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
