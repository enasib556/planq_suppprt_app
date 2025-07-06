import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font14WhiteBold = TextStyle(
    color: Colors.black,
    fontSize: 14.spMin,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14_WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 14.spMin,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font23BlackBold = TextStyle(
    color: Colors.black,
    fontSize: 23.spMin,
    fontWeight: FontWeightHelper.bold,
    letterSpacing: 1,
  );
  static TextStyle font21WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 20.spMin,
    fontWeight: FontWeightHelper.bold,
    letterSpacing: 1,
  );
  static TextStyle font19BlackBold = TextStyle(
    fontSize: 19.spMin,
    fontWeight: FontWeightHelper.bold,
    letterSpacing: 1,
  );

  static TextStyle font10GreenBold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    color: Colors.green,
  );
  static TextStyle font12BlackMedium = TextStyle(
    fontSize: 12.spMin,
    fontWeight: FontWeightHelper.medium,
    letterSpacing: 1,
    color: Colors.black,
  );
  static TextStyle font15BlackBold = TextStyle(
    fontSize: 15.spMin,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle  font15MediumBlack  =TextStyle(
  fontSize: 14.spMin,
  fontWeight: FontWeightHelper.medium,
  color: Colors.black,
  );

  static TextStyle  font10RegularBlack  =TextStyle(
    fontSize: 10.spMin,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );

}
