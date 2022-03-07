// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable/equatable.dart';

class TextScalingFactor extends Equatable {

  final double scaleFactor;

  const TextScalingFactor(this.scaleFactor);


  @override
  List<Object?> get props => [scaleFactor];

}
