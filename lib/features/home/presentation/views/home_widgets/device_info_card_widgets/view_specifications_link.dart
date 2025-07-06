import 'package:flutter/material.dart';
import '../../../../../../core/theming/text_styles.dart';

class ViewSpecificationsLink extends StatelessWidget {
  const ViewSpecificationsLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Text(
        "View full specifications",
        textAlign: TextAlign.right,
        style: TextStyles.font10GreenBold.copyWith(
          color: Colors.red[500],
        )
      ),
    );
  }
}
