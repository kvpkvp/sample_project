import 'package:flutter/material.dart';
import 'color_constants.dart';

String textFontFamily = "WorkSans";

///   TEXT STYLES
TextStyle getTextVeryLight(
    {Color colors = ColorConstants.cWhite, size = 14.0}) {
  return TextStyle(
      color: colors,
      fontFamily: textFontFamily,
      fontSize: size,
      fontWeight: FontWeight.w200,
      letterSpacing: -0.2);
}

TextStyle getTextLight(
    {Color colors = ColorConstants.cWhite, size = 14.0, letterSpacing = -0.2}) {
  return TextStyle(
      color: colors,
      fontFamily: textFontFamily,
      fontSize: size,
      fontWeight: FontWeight.w300,
      letterSpacing: letterSpacing);
}

TextStyle getTextRegular(
    {Color colors = ColorConstants.cWhite,
      size = 14.0,
      heights = 1.2,
      letterSpacing = -0.2,
      mTextDecoration = TextDecoration.none}) {
  return TextStyle(
    color: colors,
    fontFamily: textFontFamily,
    fontSize: size,
    fontWeight: FontWeight.normal,
    letterSpacing: letterSpacing,
    height: heights,
    decoration: mTextDecoration,
  );
}

TextStyle getTextMedium(
    {Color colors = ColorConstants.cBlack,
      size = 14.0,
      heights = 1.2,
      letterSpacing = -0.2}) {
  return TextStyle(
      color: colors,
      fontFamily: textFontFamily,
      fontSize: size,
      fontWeight: FontWeight.w500,
      letterSpacing: letterSpacing,
      height: heights);
}

TextStyle getTextSemiBold(
    {Color colors = ColorConstants.cWhite,
      size = 14.0,
      heights = 1.2,
      letterSpacing = -0.2}) {
  return TextStyle(
      color: colors,
      fontFamily: textFontFamily,
      fontSize: size,
      fontWeight: FontWeight.w600,
      wordSpacing: -0.5,
      height: heights,
      letterSpacing: letterSpacing);
}

TextStyle getTextBold({Color colors = ColorConstants.cWhite, size = 14.0}) {
  return TextStyle(
      color: colors,
      fontFamily: textFontFamily,
      fontSize: size,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.2);
}

TextStyle getTextBigBold({Color colors = ColorConstants.cWhite, size = 14.0}) {
  return TextStyle(
      color: colors,
      fontFamily: textFontFamily,
      fontSize: size,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.2);
}

TextStyle getTextVeryBigBold(
    {Color colors = ColorConstants.cWhite, size = 14.0}) {
  return TextStyle(
      color: colors,
      fontFamily: textFontFamily,
      fontSize: size,
      fontWeight: FontWeight.w900,
      letterSpacing: -0.2);
}
