# flutter-isolates
Demonstrates an issue with flutter driver and isolates.

Repro duction steps:

- start app
- start test
- wait for 
  VMServiceFlutterDriver: Connecting to Flutter application at http://127.0.0.1:8888/
  VMServiceFlutterDriver: Isolate found with number: 17874928626983
  VMServiceFlutterDriver: Isolate is not paused. Assuming application is ready.
  VMServiceFlutterDriver: Connected to Flutter application.
- press r, then R
