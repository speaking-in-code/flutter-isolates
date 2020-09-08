
PATH="/Users/brian/sb/flutter/bin:$PATH"
which flutter

flutter run \
  --observatory-port 8888 \
  --disable-service-auth-codes \
  test_driver/app.dart
