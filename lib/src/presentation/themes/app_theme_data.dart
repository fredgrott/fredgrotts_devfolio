// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_app_bar_theme.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_banner_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_bottomsheet_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_button_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_card_theme.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_chip_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_dialog_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_divider_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_drawer_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_elevated_button_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_floating_action_button_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_icon_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_list_tile_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_scrollbar_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_slider_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_snack_bar_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_tab_bar_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_text_button_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_text_theme.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_colors.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_theme_data_ext.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/app_typography.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/outlined_theme_data.dart';
import 'package:fredgrotts_devfolio/src/presentation/themes/wave_splash.dart';



// Note: Tech Debt details are from this doc:
//        flutter.dev/go/material-theme-system-updates
//
//         hoverColor and focusColor are desktop settings
//
//         canvasColor is backgroundColor of
//         Material ProgressIndicator, OutlineButton, and DropDownButtons.
//
//         backgroundColor is used for background color of
//         LinearProgressIndicator, Stepper, Snackbar, DatePicker, and
//         TimePeicker.
//
//         A Normalized UI-Theme'd Component has:
//           -UI-NamedTheme that is an Inherited Theme
//           -UI-NamedThemeData
//              which can use UINamedThemeData.of(context) if
//              that is at root of Widget Tree.
//


final ThemeData appMaterialLightThemeData = ThemeData(
  applyElevationOverlayColor: true,
  // this would be set if we are using non-material themes for cupertino widgets.
  //cupertinoOverrideTheme:
  // this only gets set on the Cupertino Widget side as non-Apple devices use the
  // material default
  // materialTapTargetSize:

  // I set it this way to deal with all the variance in screen-sizes
  visualDensity: VisualDensity.adaptivePlatformDensity,

  // need this set as I am using the new Material design 3 widgets
  // remember it also means more setup UI component wise to get
  //  colors right
  useMaterial3: true,

  //brightness: Brightness.light,

  // this is auto-set by target platform
  //pageTransitionsTheme:
  // this is auto-set
  //platform:

  scrollbarTheme: appMaterialLightScrollbarThemeData,
  colorScheme: appMaterialLightColorScheme,

  highlightColor: appMaterialLightHighLightColor,
  splashColor: appMaterialLightSplashColor,
  primaryColor: appMaterialLightPrimaryColor,
  canvasColor: appMaterialLightCanvasColor,
  scaffoldBackgroundColor: appMaterialLightScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialLightBottomAppBarColor,
  cardColor: appMaterialLightCardColor,
  dividerColor: appMaterialLightDividerColor,
  backgroundColor: appMaterialLightBackgroundColor,
  dialogBackgroundColor: appMaterialLightDialogBackgroundColor,
  indicatorColor: appMaterialLightIndicatorColor,
  errorColor: appMaterialLightErrorColor,
  focusColor: appMaterialLightFocusColor,
  hoverColor: appMaterialLightHoverColor,
  shadowColor: appMaterialLightShadowColor,
  selectedRowColor: appMaterialLightSelectedRowColor,
  unselectedWidgetColor: appMaterialLightUnselectedWidgetColor,
  secondaryHeaderColor: appMaterialLightSecondaryHeaderColor,
  hintColor: appMaterialLightHintColor,
  disabledColor: appMaterialLightDisabledColor,
  toggleableActiveColor: appMaterialLightToggleableActiveColor,

  typography: appTypography,
  splashFactory: appMaterialInteractiveInkFeatureFactory,

  //All these are auto set black or white depending on dark mode
  // which will not work under light theme for MD3 as then it should be tertiary on
  //
  // textTheme
  // primaryTextTheme
  // accenttextTheme

  textTheme: appMateriaLightTextTheme,
  primaryTextTheme: appMaterialLightPrimaryTextTheme,
  iconTheme: appMaterialLightIconThemeData,
  primaryIconTheme: appMaterialLightPrimaryIconTheme,
  appBarTheme: appMaterialLightAppBarTheme,
  drawerTheme: appMaterialLightDrawerThemeData,
  listTileTheme: appMaterialLightListTileThemeData,
  
  floatingActionButtonTheme: appMaterialLightFloatingActionButtonThemeData,
  elevatedButtonTheme: appMaterialLightElevatedButtonThemeData,
  buttonTheme: materialLightButtonThemeData,
  cardTheme: appMaterialLightCardTheme,
  bannerTheme: appMaterialLightBannerThemeData,
  textButtonTheme: appMaterialLightTextButtonThemeData,
  snackBarTheme: appMaterialLightSnackBarThemeData,
  outlinedButtonTheme: appMaterialLightOutlinedButtonThemeData,
  chipTheme: appMaterialLightChipThemeData,
  dividerTheme: appMaterialLightDividerThemeData,
  sliderTheme: appMaterialLightSliderThemeData,
  tabBarTheme: appMaterialLightTabBarTheme,
  bottomSheetTheme: appMaterialLightBottomSheetThemeData,
  dialogTheme: appMaterialLightDialogTheme,
)..addThemeDataColorFields(
    AppThemeColorFields(
      appPrimaryOne: Color(primaryLightOne),
      appOnPrimaryOne: Color(onPrimaryLightOne),
      appPrimaryTwo: Color(primaryLightTwo),
      appOnPrimaryTwo: Color(onPrimaryLightTwo),
      appPrimaryThree: Color(primaryLightThree),
      appOnPrimaryThree: Color(onPrimaryLightThree),
      appPrimaryContainerOne: Color(primaryContainerLightOne),
      appOnPrimaryContainerOne: Color(onPrimaryContainerLightOne),
      appPrimaryContainerTwo: Color(primaryContainerLightTwo),
      appOnPrimaryContainerTwo: Color(onPrimaryContainerLightTwo),
      appPrimaryContainerThree: Color(primaryContainerLightThree),
      appOnPrimaryContainerThree: Color(onPrimaryContainerLightThree),
    ),
  );

final ThemeData appMaterialDarkThemeData = ThemeData(
  applyElevationOverlayColor: true,
  // this would be set if we are using non-material themes for cupertino widgets.
  //cupertinoOverrideTheme:
  // this only gets set on the Cupertino Widget side as non-Apple devices use the
  // material default
  // materialTapTargetSize:

  // I set it this way to deal with all the variance in screen-sizes
  visualDensity: VisualDensity.adaptivePlatformDensity,

  // need this set as I am using the new Material design 3 widgets
  // remember it also means more setup UI component wise to get
  //  colors right
  useMaterial3: true,

  //brightness: Brightness.dark,
  colorScheme: appMaterialDarkColorScheme,

  splashFactory: appMaterialInteractiveInkFeatureFactory,

  // this is auto-set by target platform
  //pageTransitionsTheme:
  // this is auto-set
  //platform:
  scrollbarTheme: appMaterialDarkScrollbarThemeData,
  highlightColor: appMaterialDarkHighLightColor,
  splashColor: appMaterialDarkSplashColor,
  primaryColor: appMaterialDarkPrimaryColor,
  canvasColor: appMaterialDarkCanvasColor,
  scaffoldBackgroundColor: appMaterialDarkScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialDarkBottomAppBarColor,
  cardColor: appMaterialDarkCardColor,
  dividerColor: appMaterialDarkDividerColor,
  backgroundColor: appMaterialDarkBackgroundColor,
  dialogBackgroundColor: appMaterialDarkDialogBackgroundColor,
  indicatorColor: appMaterialDarkIndicatorColor,
  errorColor: appMaterialDarkErrorColor,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  shadowColor: appMaterialDarkShadowColor,
  selectedRowColor: appMaterialDarkSelectedRowColor,
  unselectedWidgetColor: appMaterialDarkUnselectedWidgetColor,
  secondaryHeaderColor: appMaterialDarkSecondaryHeaderColor,
  hintColor: appMaterialDarkHintColor,
  disabledColor: appMaterialDarkDisabledColor,
  toggleableActiveColor: appMaterialDarkToggleableActiveColor,
  typography: appTypography,
  textTheme: appMateriaDarkTextTheme,
  primaryTextTheme: appMaterialDarkPrimaryTextTheme,
  iconTheme: appMaterialDarkIconThemeData,
  primaryIconTheme: appMaterialDarkPrimaryIconTheme,
  appBarTheme: appMaterialDarkAppBarTheme,
  drawerTheme: appMaterialDarkDrawerThemeData,
  listTileTheme: appMaterialDarkListTileThemeData,
  
  
  floatingActionButtonTheme: appMaterialDarkFloatingActionButtonThemeData,
  elevatedButtonTheme: appMaterialDarkElevatedButtonThemeData,
  buttonTheme: materialDarkButtonThemeData,
  cardTheme: appMaterialDarkCardTheme,
  bannerTheme: appMaterialDarkBannerThemeData,
  textButtonTheme: appMaterialDarkTextButtonThemeData,
  snackBarTheme: appMaterialDarkSnackBarThemeData,
  outlinedButtonTheme: appMaterialDarkOutlinedButtonThemeData,
  chipTheme: appMaterialDarkChipThemeData,
  dividerTheme: appMaterialDarkDividerThemeData,
  sliderTheme: appMaterialDarkSliderThemeData,
  tabBarTheme: appMaterialDarkTabBarTheme,
  bottomSheetTheme: appMaterialDarkBottomSheetThemeData,
  dialogTheme: appMaterialDarkDialogTheme,
)..addThemeDataColorFields(
    AppThemeColorFields(
      appPrimaryOne: Color(primaryDarkOne),
      appOnPrimaryOne: Color(onPrimaryDarkOne),
      appPrimaryTwo: Color(primaryDarkTwo),
      appOnPrimaryTwo: Color(onPrimaryDarkTwo),
      appPrimaryThree: Color(primaryDarkThree),
      appOnPrimaryThree: Color(onPrimaryDarkThree),
      appPrimaryContainerOne: Color(primaryContainerDarkOne),
      appOnPrimaryContainerOne: Color(onPrimaryContainerDarkOne),
      appPrimaryContainerTwo: Color(primaryContainerDarkTwo),
      appOnPrimaryContainerTwo: Color(onPrimaryContainerDarkTwo),
      appPrimaryContainerThree: Color(primaryContainerDarkThree),
      appOnPrimaryContainerThree: Color(onPrimaryContainerDarkThree),
    ),
  );


// ignore: prefer-correct-identifier-length
final InteractiveInkFeatureFactory appMaterialInteractiveInkFeatureFactory =
    WaveSplash.customSplashFactory(
  strokeWidth: 44,
  blurStrength: 25,
);
