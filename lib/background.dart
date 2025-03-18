import 'dart:async';

void background() => runZonedGuarded(() {}, (error, stackTrace) {});
