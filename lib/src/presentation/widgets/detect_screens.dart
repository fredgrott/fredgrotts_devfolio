// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';

bool isLargeScreen(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.large;

bool isXLargeScreen(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.xlarge;

bool isMediumScreen(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.medium;

bool isXSmallScree(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.xsmall;

bool isSmallScreen(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.small;
