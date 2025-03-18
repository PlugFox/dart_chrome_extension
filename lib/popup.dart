import 'dart:async';

void popup() => runZonedGuarded(
  () {
    /* web.console.log('Content: Hello, World!'.toJS);
    web.console.log('Compiler: ${const String.fromEnvironment('COMPILER')}'.toJS);
    web.document.body?.remove();

    web.window.onMessage.listen((event) {
      web.console.log('Content: Received message: ${event.data}'.toJS);
    }); */
    print('Popup: !!!');
    Timer.periodic(const Duration(seconds: 1), (timer) {
      print('Popup: ${DateTime.now()}');
    });
  },
  (error, stackTrace) {
    print('Popup Error: $error\n$stackTrace');
  },
);
