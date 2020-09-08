// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_driver/driver_extension.dart';
import 'package:isolates/main.dart' as app;

void main() {
  print('App starting, enabling flutter driver exension.');
  // This line enables the extension.
  enableFlutterDriverExtension();
  print('Extension enabled.');

  // Call the `main()` function of the app, or call `runApp` with
  // any widget you are interested in testing.
  app.main();
}
