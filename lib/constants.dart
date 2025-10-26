import 'package:flutter/material.dart';

const double kSmallestSpacing = 5;
const double kSmallSpacing = 10;
const double kMediumSpacing = 20;
const double kLargeSpacing = 30;
const double kTitleFontSize = 22;
const double kHeaderFontSize = 20;
const double kFontSize = 18;
const double kSubtitleFontSize = 16;
const double kSmallSubtitleFontSize = 14;
const double kSmallestSubtitleFontSize = 12;

const double kElevation = 1;
const double kBorderRadius = 15;

class AppTheme {
  static const primary = Color(0xffff6b6b);
  static const secondary = Color(0xffffd6a5);
  static const accent = Color(0xffffd93d);
  static const background = Color(0xffffffff);
  static const text = Color(0xff333333);
  static const surface = Color(0xffffd6a5);
  static const subtitle = Colors.black45;
  static const gradientDark = Color(0xffffceb2);
  static const gradientLight = Color(0xfffff1e6);
}

final TextStyle kTitleTextStyle = TextStyle(
  color: AppTheme.text,
  fontSize: kTitleFontSize,
  fontWeight: FontWeight.w700,
);

final TextStyle kHeaderTextStyle = TextStyle(
  color: AppTheme.text,
  fontSize: kHeaderFontSize,
  fontWeight: FontWeight.w600,
);

final TextStyle kTextStyle = TextStyle(color: AppTheme.text, fontSize: 18);

final TextStyle kBoldTextStyle = TextStyle(
  color: AppTheme.text,
  fontSize: kFontSize,
  fontWeight: FontWeight.w600,
);

final TextStyle kSubtitleTextStyle = TextStyle(
  color: AppTheme.subtitle,
  fontSize: kSubtitleFontSize,
);
final TextStyle kBoldSubtitleTextStyle = TextStyle(
  color: AppTheme.subtitle,
  fontSize: kSubtitleFontSize,
  fontWeight: FontWeight.w700,
);
final TextStyle kBoldSubtitleTextStyleWithMainColor = TextStyle(
  fontSize: kSubtitleFontSize,
  fontWeight: FontWeight.w700,
);

final TextStyle kSmallSubtitleTextStyle = TextStyle(
  color: AppTheme.subtitle,
  fontSize: kSmallSubtitleFontSize,
);
final TextStyle kBoldSmallSubtitleTextStyle = TextStyle(
  color: AppTheme.subtitle,
  fontSize: kSmallSubtitleFontSize,
  fontWeight: FontWeight.w700,
);
final TextStyle kSmallestSubtitleTextStyle = TextStyle(
  color: AppTheme.subtitle,
  fontSize: kSmallestSubtitleFontSize,
);
