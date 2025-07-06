import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/theming/images.dart';
import 'package:windows_desktop_app/core/theming/text_styles.dart';
import 'package:windows_desktop_app/features/home/presentation/views/home_widgets/firstcardhome.dart';
import 'package:windows_desktop_app/features/home/presentation/views/home_widgets/secondcardhome.dart';
import 'package:windows_desktop_app/features/home/presentation/views/home_widgets/thirdcardhome.dart';

import 'SupportSideBar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50, child: const SupportSideBar()),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    child: Image(
                      image: AssetImage(AppImages.battery),
                      height: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Welcome Ahmed Tamer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //first card
                      Firstcardhome(),
                      //second card
                      Secondcardhome(),
                      // third card
                      Thirdcardhome(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
