import 'dart:async';

import 'package:flutter/foundation.dart'; // Import to access BindingBase
import 'package:flutter/material.dart';
import 'package:iclick_books_manager/app.dart';
import 'package:iclick_books_manager/injection_container.dart' as app_di;

void main() {
  // Set debugZoneErrorsAreFatal to true before initializing bindings
  BindingBase.debugZoneErrorsAreFatal = true;

  // Use Zone to ensure initialization and runApp are in the same zone (New Migrations Flutter 3.10,)
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Perform dependency injection setup
    await app_di.setup();

    // Run the application
    runApp(App());
  }, (error, stackTrace) {
//can add a crash logger for this
  });
}
