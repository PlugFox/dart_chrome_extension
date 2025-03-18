//import 'dart:js_interop';
//import 'package:web/web.dart' as web;

//@JS()
//external web.ServiceWorkerGlobalScope get self;
//@JS()
//external JSAny get self;
import 'package:ccopilot/background.dart';

void main() {
  /* self.clients.matchAll().toDart.then((clients) {
    for (var client in clients.toDart) {
      client.postMessage('Hello, World!'.toJS);
    }
  }); */
  background();
}
