// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Note: bottom rounder corners show not the top

// ignore: prefer-correct-identifier-length
import 'package:flutter/material.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_colors.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/squircle_border.dart';

// ignore: prefer-correct-identifier-length
final DrawerThemeData appMaterialLightDrawerThemeData = DrawerThemeData(
  backgroundColor: appMaterialLightColorScheme.background,
  scrimColor: appMaterialLightColorScheme.secondaryContainer,
  elevation: 0,
  shape: const SquircleBorder(
    radius: BorderRadius.only(
      // ignore: avoid_redundant_argument_values
      topLeft: Radius.zero,
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
      bottomLeft: Radius.zero,
    ),
  ),
);

final DrawerThemeData appMaterialDarkDrawerThemeData = DrawerThemeData(
  backgroundColor: appMaterialDarkColorScheme.background,
  scrimColor: appMaterialDarkColorScheme.secondaryContainer,
  elevation: 0,
  shape: const SquircleBorder(
    radius: BorderRadius.only(
      // ignore: avoid_redundant_argument_values
      topLeft: Radius.zero,
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
      bottomLeft: Radius.zero,
    ),
  ),
);
