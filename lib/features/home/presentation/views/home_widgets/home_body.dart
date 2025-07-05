import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/theming/images.dart';

import 'SupportSideBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SupportSideBar(),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  child: Image(image: AssetImage(AppImages.battery), height: 50),
                ),
                const Spacer(
                  flex: 2,
                ),
                Text('Welcome Ahmed Tamer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),)
              ],
            ),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.all(16),
            //     child: Row(
            //       children: const [
            //         // Expanded(child: DeviceInfoCard()),
            //         // SizedBox(width: 16),
            //         // Expanded(child: DiagnosticsCard()),
            //         // SizedBox(width: 16),
            //         // Expanded(child: RemoteSupportCard()),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
