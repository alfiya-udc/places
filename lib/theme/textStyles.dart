import 'package:flutter/painting.dart';

import 'colors.dart';

TextStyle _text = const TextStyle(
  fontFamily: 'Roboto',
);
final homeAppbarStyle = _text.copyWith(
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
    ),
    typeTagStyle = _text.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: white,
    ),
    toVisitStyle = _text.copyWith(
      fontSize: 14,
      color: green,
    ),
    subtitleStyle = _text.copyWith(
      fontSize: 18,
      color: textSecondary3,
      fontWeight: FontWeight.w500,
      height: 1.05,
    ),
    bottomOptionStyle =
        _text.copyWith(fontSize: 30, fontWeight: FontWeight.bold),
    emptyStyleTitle = _text.copyWith(
      fontSize: 18,
      color: inactiveBlack,
      fontWeight: FontWeight.w500,
    ),
    emptyStyleText = _text.copyWith(
      fontSize: 14,
      color: inactiveBlack,
    );
