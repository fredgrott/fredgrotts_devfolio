// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore: prefer-correct-identifier-length
import 'package:flutter/material.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_colors.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/squircle_border.dart';
import 'package:google_fonts/google_fonts.dart';

final SnackBarThemeData appMaterialLightSnackBarThemeData = SnackBarThemeData(
  backgroundColor: appMaterialLightColorScheme.surfaceVariant,
  actionTextColor: appMaterialLightColorScheme.primaryContainer,
  disabledActionTextColor: appMaterialLightColorScheme.onSurface,
  elevation: elevationTwo,
  behavior: SnackBarBehavior.floating,
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
  contentTextStyle: appMaterialLightSnackContentTextStyle,
);

// ignore: prefer-correct-identifier-length
final SnackBarThemeData appMaterialDarkSnackBarThemeData = SnackBarThemeData(
  backgroundColor: appMaterialDarkColorScheme.surfaceVariant,
  actionTextColor: appMaterialDarkColorScheme.primaryContainer,
  disabledActionTextColor: appMaterialDarkColorScheme.onSurface,
  elevation: elevationTwo,
  behavior: SnackBarBehavior.floating,
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
  contentTextStyle: appMaterialDarkSnackContentTextStyle,
);

// Body Small
// ignore: prefer-correct-identifier-length
final TextStyle appMaterialLightSnackContentTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
  fontFamily: GoogleFonts.montserratAlternates().fontFamily,
);

// ignore: prefer-correct-identifier-length
final TextStyle appMaterialDarkSnackContentTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
  fontFamily: GoogleFonts.montserratAlternates().fontFamily,
);
