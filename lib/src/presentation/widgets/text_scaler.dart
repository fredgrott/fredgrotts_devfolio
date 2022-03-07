// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';

/// Usage:
///  class MyApp extends StatelessWidget {
///  @override
///  Widget build(BuildContext context) {
///    return TextScaler<TextScalingFactor>(
///      initialScaleFactor: TextScalingFactor(scaleFactor: scaler(context, 1.25)),
///      child: MaterialApp(
///        title: 'Text Scaling Demo',
///        theme: ThemeData(
///          primarySwatch: Colors.blue,
///        ),
///        home: MyHomePage(title: 'Text Scaling Demo'),
///      ),
///    );
///  }
///}
/// Then in Text Widgets do
/// Text(
///  'This is a sample heading',
///  textScaleFactor: TextScaler.of<TextScalingFactor>(context).scaleFactor,
/// )
class _ScalingFactorBindingScope<T> extends InheritedWidget {
  final _TextScalerState<T>? scalingFactorBindingState;

  const _ScalingFactorBindingScope({
    Key? key,
    this.scalingFactorBindingState,
    required Widget child,
  // ignore: unnecessary_null_comparison
  })  : assert(child != null),
        super(key: key, child: child,);

  

  @override
  bool updateShouldNotify(_ScalingFactorBindingScope<dynamic> old) {
    return true;
  }
}

class TextScaler<T> extends StatefulWidget {
  final Widget? child;
  final T initialScaleFactor;
  

  const TextScaler({
    Key? key,
    required this.initialScaleFactor,
    this.child,
  })  : assert(initialScaleFactor != null),
        super(key: key);

  

  @override
  _TextScalerState<T> createState() => _TextScalerState<T>();

  static T? of<T>(BuildContext context) {
    final _ScalingFactorBindingScope<dynamic>? scope = context
        .dependOnInheritedWidgetOfExactType<_ScalingFactorBindingScope<dynamic>>();
        
    return scope?.scalingFactorBindingState?.currentValue as T?;
  }

  static void update<T>(BuildContext context, T newModel,) {
    final _ScalingFactorBindingScope<dynamic>? scope = context
        .dependOnInheritedWidgetOfExactType<_ScalingFactorBindingScope<dynamic>>();
    scope?.scalingFactorBindingState?.updateModel(newModel);
  }
}

class _TextScalerState<T> extends State<TextScaler<T>> {
  T? currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.initialScaleFactor;
  }

  void updateModel(T newModel) {
    if (newModel != currentValue) {
      setState(() {
        currentValue = newModel;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _ScalingFactorBindingScope<T>(
      scalingFactorBindingState: this,
      child: widget.child as Widget,
    );
  }
}
