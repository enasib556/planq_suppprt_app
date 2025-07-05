import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/text_styles.dart';

class CustomTopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomTopBar({super.key, required this.title});

  @override
  Size get preferredSize =>  Size.fromHeight(24);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        color: Colors.black,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: TextStyles.font14WhiteBold
        ),
      ),
    );
  }
}
