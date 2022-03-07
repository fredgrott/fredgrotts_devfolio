// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:fredgrotts_devfolio/src/presentation/widgets/detect_screens.dart';

double scaler(BuildContext context, double textScale,) {
  if (isXSmallScree(context)) {
    return textScale * 0.5;
  }
  if (isSmallScreen(context)) {
    return textScale * 0.65;
  }

  if (isMediumScreen(context)) {
    return textScale * 0.7;
  }

  if (isLargeScreen(context)) {
    return textScale * 0.8;
  }

  return textScale;
}
