// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart' hide TypeMatcher, isInstanceOf;

import 'dart:io';

void main() {
  group('Counter App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final SerializableFinder counterTextFinder = find.byValueKey('counter');
    final SerializableFinder buttonFinder = find.byValueKey('increment');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    Future<void> _waitForCounter(String expected) async {
      return driver.waitFor(
          find.descendant(
              of: counterTextFinder,
              matching: find.text(expected),
              matchRoot: true),
          timeout: const Duration(seconds: 10));
    }

    test('starts at 0', () async {
      // await _waitForCounter('0');
    });

    test('increments the counter', () async {
      // First, tap the button.
      // await driver.tap(buttonFinder);

      // Then, verify the counter text is incremented by 1.
      // await _waitForCounter('1');
    });

    test('handles hot reload without exception', () async {
      print('Waiting 10 seconds for hot reload.');
      sleep(Duration(seconds: 10));
      print('Completing test.');
    });
  });
}
