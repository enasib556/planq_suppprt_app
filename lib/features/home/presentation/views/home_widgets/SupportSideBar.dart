import 'package:flutter/material.dart';

import '../../../../../core/theming/text_styles.dart';

class SupportSideBar extends StatelessWidget {
  const SupportSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Container(
        width: 40,
        height: double.infinity,
        color: Colors.red,
        child: RotatedBox(
          quarterTurns: -1,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 2),
            child: Text(
              'Support Center',
              textAlign: TextAlign.end,
              style: TextStyles.font21WhiteBold,
            ),
          ),
        ),
      ),
    );
  }
}
