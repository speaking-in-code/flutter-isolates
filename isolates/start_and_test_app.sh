
PATH="/Users/brian/sb/flutter/bin:$PATH"

exec flutter drive \
  --target test_driver/app.dart \
  --driver test_driver/app_test.dart
