//import 'dart:js_interop';
//import 'package:web/web.dart' as web;

import 'dart:async';

void content() => runZonedGuarded(
  () {
    /* web.console.log('Content: Hello, World!'.toJS);
    web.console.log('Compiler: ${const String.fromEnvironment('COMPILER')}'.toJS);
    web.document.body?.remove();

    web.window.onMessage.listen((event) {
      web.console.log('Content: Received message: ${event.data}'.toJS);
    }); */
    print('Content: !!!');
    Timer.periodic(const Duration(seconds: 1), (timer) {
      print('Content: ${DateTime.now()}');
    });
  },
  (error, stackTrace) {
    print('Content Error: $error\n$stackTrace');
  },
);
