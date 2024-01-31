import 'package:flutter/material.dart';

class SizeConstants {
  static double width = 0.0;
  static double height = 0.0;
  static double s_05 = 0.0;
  static double s1 = 0.0;
  static double s4 = 0.0;
  static double s8 = 0.0;
  static double s12 = 0.0;
  static double s16 = 0.0;
  static double s18 = 0.0;
  static double s20 = 0.0;
  static double s24 = 0.0;
  static double s32 = 0.0;
  static double s40 = 0.0;
  static double s44 = 0.0;

  ///These size constant values are used in Spacing & Font sizes
  SizeConstants(BuildContext mBuildContext) {
    width = MediaQuery.of(mBuildContext).size.width;
    height = MediaQuery.of(mBuildContext).size.height;

    s_05 = width * 0.0013;
    s1 = s_05 * 2;
    s4 = s1 * 4;
    s8 = s1 * 8;
    s12 = s1 * 12;
    s16 = s1 * 16;
    s18 = s1 * 18;
    s20 = s1 * 20;
    s24 = s1 * 24;
    s32 = s1 * 32;
    s40 = s1 * 40;
    s44 = s1 * 44;
  }
}
