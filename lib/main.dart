import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'config/app_config.dart';
import 'di/injection.dart' as di;
import 'firebase_options.dart';

void main() async {
  ConfigEnvironment.setEnvironment(Environment.trial);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  di.init();
  runApp(const MyApp());
}
