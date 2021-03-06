// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: need to set adaptive sizes at the individual UI component as I need a context:
//       size: getWindowType(context) == AdaptiveWindowType.lrge ? 34.0 : 24.0
//
//       And, my Brand Semantic Color harmonize with primary settings are done at the
//       UI component level in the screen.

import 'package:flutter/material.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_colors.dart';

final IconThemeData appMaterialLightIconThemeData = IconThemeData(
  color: appMaterialLightColorScheme.primary,
  size: 32,
);

final IconThemeData appMaterialDarkIconThemeData = IconThemeData(
  color: appMaterialDarkColorScheme.primary,
  size: 32,
);

// ignore: prefer-correct-identifier-length
final IconThemeData appMaterialLightPrimaryIconTheme = IconThemeData(
  color: appMaterialLightColorScheme.primary,
  size: 32,
);

// ignore: prefer-correct-identifier-length
final IconThemeData appMaterialDarkPrimaryIconTheme = IconThemeData(
  color: appMaterialDarkColorScheme.primary,
  size: 32,
);
