import 'dart:async';
import 'dart:js_interop';

import 'package:web/web.dart' as web;

void content() => runZonedGuarded(
  () {
    web.window.onMessage.listen((event) {
      web.console.log('Content: Received message: ${event.data}'.toJS);
    });

    void removeImgs() {
      final images = web.document.querySelectorAll('img');
      for (var i = 0; i < images.length; i++) {
        final item = images.item(i);
        if (item.isA<web.HTMLImageElement>()) {
          (item as web.HTMLImageElement).remove();
        }
      }
      web.console.log('Content: Removed ${images.length} images'.toJS);
    }

    Timer.periodic(const Duration(seconds: 1), (timer) {
      removeImgs();
    });

    removeImgs();
  },
  (error, stackTrace) {
    web.console.log('Content Error: $error\n$stackTrace'.toJS);
  },
);
