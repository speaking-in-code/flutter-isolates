import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  final expected = 'Isolate State: None';
  group('Counter App', () {
    final counterTextFinder = find.text(expected);

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

    test('starts', () async {
      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(await driver.getText(counterTextFinder), expected);
    });
  });
}