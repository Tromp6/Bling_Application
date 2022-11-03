// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bling/app/app.dart';
import 'package:bling/bootstrap.dart';
import 'package:flutter/material.dart';

import 'core/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  bootstrap(() => const App());
}
