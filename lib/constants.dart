import 'package:flutter/material.dart';

final double kSizedBoxHeightFactor = 0.015;

class AppTheme {
  static const primary = Color(0xffff6b6b);
  static const secondary = Color(0xffffd6a5);
  static const accent = Color(0xffffd93d);
  static const background = Color(0xffffffff);
  static const text = Color(0xff333333);
  static const surface = Color(0xffffd6a5);
}

final TextStyle kTitleTextStyle = TextStyle(
  color: AppTheme.text,
  fontSize: 22,
  fontWeight: FontWeight.w700,
);

final TextStyle kCategoryCardTitleTextStyle = TextStyle(
  color: AppTheme.text,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

final TextStyle kQuestionsPackCardTitleTextStyle = TextStyle(
  color: AppTheme.text,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

final TextStyle kQuestionCardTitleTextStyle = TextStyle(
  color: AppTheme.text,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
