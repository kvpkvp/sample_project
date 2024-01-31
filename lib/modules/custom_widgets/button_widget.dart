import 'package:flutter/material.dart';
import '../utils/color_constants.dart';
import '../utils/size_constants.dart';
import '../utils/text_styles.dart';

/// Rectangle rounded corner button
rectangleRoundedCornerButtonWithoutBorder({
  @required ValueChanged<String>? appbarActionInterface,
  @required String? sButtonTitle,
  double dButtonWidth = 0.0,
  Color cButtonTextColor = ColorConstants.cWhite,
  Color cButtonBackGroundColor = ColorConstants.cWhite,
  Color cButtonBorderColor = Colors.transparent,
  double dButtonTextSize = 0.0,
  double dButtonRadius = 0.0,
}) {
  dButtonTextSize =
  dButtonTextSize == 0.0 ? SizeConstants.s1 * 16 : dButtonTextSize;
  dButtonWidth = dButtonWidth == 0.0 ? SizeConstants.width * 0.4 : dButtonWidth;
  dButtonRadius = dButtonRadius == 0.0 ? SizeConstants.s1 * 14 : dButtonRadius;
  return GestureDetector(
    onTap: () {
      appbarActionInterface!(sButtonTitle);
    },
    child: Container(
      alignment: Alignment.center,
      width: dButtonWidth,
      padding: EdgeInsets.only(
        top: SizeConstants.s1 * 6,
        bottom: SizeConstants.s1 * 6,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: cButtonBackGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(dButtonRadius)),
        border: Border.all(
            color: cButtonBorderColor, width: SizeConstants.width * 0.023 / 8),
      ),
      child: Text(
        sButtonTitle!,
        style: getTextRegular(colors: cButtonTextColor, size: dButtonTextSize),
      ),
    ),
  );
}


/// Rectangle rounded corner button
rectangleRoundedCornerButton({
  @required ValueChanged<String>? appbarActionInterface,
  @required String? sButtonTitle,
  double dButtonWidth = 0.0,
  Color cButtonTextColor = ColorConstants.cWhite,
  Color cButtonBackGroundColor = ColorConstants.cWhite,
  Color cButtonBorderColor = Colors.transparent,
  double dButtonTextSize = 0.0,
  double dButtonRadius = 0.0,
}) {
  dButtonTextSize =
  dButtonTextSize == 0.0 ? SizeConstants.s1 * 16 : dButtonTextSize;
  dButtonWidth = dButtonWidth == 0.0 ? SizeConstants.width * 0.4 : dButtonWidth;
  dButtonRadius = dButtonRadius == 0.0 ? SizeConstants.s1 * 14 : dButtonRadius;
  return GestureDetector(
    onTap: () {
      appbarActionInterface!(sButtonTitle);
    },
    child: Container(
      alignment: Alignment.center,
      width: dButtonWidth,
      padding: EdgeInsets.only(
        top: SizeConstants.s1 * 12,
        bottom: SizeConstants.s1 * 12,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: cButtonBackGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(dButtonRadius)),
        border: Border.all(
            color: cButtonBorderColor, width: SizeConstants.width * 0.023 / 8),
      ),
      child: Text(
        sButtonTitle!,
        style: getTextRegular(colors: cButtonTextColor, size: dButtonTextSize),
      ),
    ),
  );
}

mediumRoundedCornerButton({
  @required ValueChanged<String>? appbarActionInterface,
  @required String? sButtonTitle,
  double dButtonWidth = 0.0,
  Color cButtonTextColor = ColorConstants.cWhite,
  Color cButtonBackGroundColor = ColorConstants.cWhite,
  Color cButtonBorderColor = Colors.transparent,
  bool cBoxShadow = false,
  double dButtonTextSize = 0.0,
  double dButtonRadius = 0.0,
}) {
  dButtonTextSize =
  dButtonTextSize == 0.0 ? SizeConstants.s1 * 16 : dButtonTextSize;
  dButtonWidth = dButtonWidth == 0.0 ? SizeConstants.width * 0.4 : dButtonWidth;
  dButtonRadius =
  dButtonRadius == 0.0 ? SizeConstants.width * 0.023 : dButtonRadius;
  return GestureDetector(
    onTap: () {
      appbarActionInterface!(sButtonTitle);
    },
    child: Container(
      alignment: Alignment.center,
      width: dButtonWidth,
      padding: EdgeInsets.only(
        top: SizeConstants.s1 * 13,
        bottom: SizeConstants.s1 * 13,
      ),
      decoration: BoxDecoration(
        color: cButtonBackGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(dButtonRadius)),
        border: Border.all(
            color: cButtonBorderColor, width: SizeConstants.width * 0.023 / 8),
      ),
      child: Text(
        sButtonTitle!,
        style: getTextMedium(colors: cButtonTextColor, size: dButtonTextSize),
      ),
    ),
  );
}

rectangleRoundedCornerButtonImage({
  @required ValueChanged<String>? appbarActionInterface,
  @required String? sButtonTitle,
  @required String? iImageAssets,
  double dButtonWidth = 0.0,
  Color cButtonTextColor = ColorConstants.cWhite,
  Color cIconBackgroundColour = ColorConstants.cWhite,
  Color cButtonBackGroundColor = ColorConstants.cWhite,
  Color cButtonBorderColor = Colors.transparent,
  double dButtonTextSize = 0.0,
  double dButtonRadius = 0.0,
}) {
  dButtonTextSize =
  dButtonTextSize == 0.0 ? SizeConstants.s1 * 16 : dButtonTextSize;
  dButtonWidth = dButtonWidth == 0.0 ? SizeConstants.width * 0.4 : dButtonWidth;
  dButtonRadius = dButtonRadius == 0.0 ? SizeConstants.s1 * 12 : dButtonRadius;
  return GestureDetector(
    onTap: () {
      appbarActionInterface!(sButtonTitle);
    },
    child: Container(
      alignment: Alignment.center,
      width: dButtonWidth,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: cButtonBackGroundColor,
        borderRadius: BorderRadius.all(Radius.circular(dButtonRadius)),
        border: Border.all(
            color: cButtonBorderColor, width: SizeConstants.width * 0.023 / 8),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(SizeConstants.s1 * 3),
            padding: EdgeInsets.all(SizeConstants.s1 * 7),
            width: SizeConstants.s1 * 35,
            height: SizeConstants.s1 * 35,
            decoration: BoxDecoration(
              color: cIconBackgroundColour,
              borderRadius:
              BorderRadius.all(Radius.circular(SizeConstants.s1 * 6)),
            ),
            child: Image(
              image: AssetImage(iImageAssets ?? ""),
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            width: SizeConstants.s1 * 8,
          ),
          Text(
            sButtonTitle!,
            style:
            getTextRegular(colors: cButtonTextColor, size: dButtonTextSize),
          )
        ],
      ),
    ),
  );
}
