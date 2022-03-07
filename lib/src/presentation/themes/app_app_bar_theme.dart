// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: top appbar under MD3 has 0dp corners

import 'package:flutter/material.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_icon_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_colors.dart';

final AppBarTheme appMaterialLightAppBarTheme = AppBarTheme(
  // under MD3 it's not a full color fill and no shadows for
  // navbars
  backgroundColor: appMaterialLightColorScheme.secondaryContainer,
  elevation: 4,
  shadowColor: Colors.transparent,
  iconTheme: appMaterialLightIconThemeData,
  actionsIconTheme: appMaterialLightIconThemeData,
  centerTitle: true,
  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
);

final AppBarTheme appMaterialDarkAppBarTheme = AppBarTheme(
  // under MD3 it's not a full color fill and no shadows for
  // navbars
  backgroundColor: appMaterialDarkColorScheme.secondaryContainer,
  elevation: 4,
  shadowColor: Colors.transparent,
  iconTheme: appMaterialDarkIconThemeData,
  actionsIconTheme: appMaterialDarkIconThemeData,
  centerTitle: true,
  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
);
