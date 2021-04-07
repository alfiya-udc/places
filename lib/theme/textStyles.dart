import 'package:flutter/painting.dart';

import 'colors.dart';

TextStyle _text = const TextStyle(
  fontFamily: 'Roboto',
);
final appbarStyle = _text.copyWith(
      fontSize: 32,
      color: textSecondary,
      fontWeight: FontWeight.bold,
      height: 1.05,
    ),
    baseTextStyle = _text.copyWith(
      fontSize: 14,
      color: textSecondary,
    ),
    cardTitleStyle = _text.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textSecondary,
    ),
    cardTitleDetails = _text.copyWith(
      fontSize: 14,
      color: textSecondary2,
    ),
    placeTitleStyle = _text.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: textSecondary,
    ),
    placeTypeStyle = _text.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: textSecondary,
    ),
    workTimeStyle = _text.copyWith(
      fontSize: 14,
      color: textSecondary2,
    );
