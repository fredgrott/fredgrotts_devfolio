// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore: prefer-correct-identifier-length
import 'package:flutter/material.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_colors.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/squircle_border.dart';

// ignore: prefer-correct-identifier-length
final BottomSheetThemeData appMaterialLightBottomSheetThemeData =
    BottomSheetThemeData(
  backgroundColor: appMaterialLightColorScheme.surfaceVariant,
  elevation: elevationTwo,
  modalBackgroundColor: appMaterialLightColorScheme.inverseSurface,
  modalElevation: elevationFour,
  clipBehavior: Clip.antiAlias,
  constraints: const BoxConstraints.expand(),
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
);

// ignore: prefer-correct-identifier-length
final BottomSheetThemeData appMaterialDarkBottomSheetThemeData =
    BottomSheetThemeData(
  backgroundColor: appMaterialDarkColorScheme.surfaceVariant,
  elevation: elevationTwo,
  modalBackgroundColor: appMaterialDarkColorScheme.inverseSurface,
  modalElevation: elevationFour,
  clipBehavior: Clip.antiAlias,
  constraints: const BoxConstraints.expand(),
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
);
