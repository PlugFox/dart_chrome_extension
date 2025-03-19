import 'dart:async';

void popup() => runZonedGuarded(
  () {
    print('Popup: !!!');
    Timer.periodic(const Duration(seconds: 1), (timer) {
      print('Popup: ${DateTime.now()}');
    });
  },
  (error, stackTrace) {
    print('Popup Error: $error\n$stackTrace');
  },
);
