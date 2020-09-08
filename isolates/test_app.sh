
PATH="/Users/brian/sb/flutter/bin:$PATH"

exec flutter drive \
  --use-existing-app=http://127.0.0.1:8888/ \
  --driver test_driver/app_test.dart
#exec flutter drive \
#  --target test_driver/app.dart \
#  --driver test_driver/app_test.dart
