import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:recombox/src/rust/frb_generated.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:async';

import 'package:recombox/src/global/app_color.dart';

import 'src/routes/home.dart';

// Routes Imports

var logger = Logger();

Future<void> main() async {
  await RustLib.init();
  WidgetsFlutterBinding.ensureInitialized();

  // -> Window Manager
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    size: Size(800, 600),
    center: true,
    backgroundColor: AppColor.primary,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  // <-

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      title: 'RecomBox',
      routes: {
        "/": (context) => const Home(),
        // "/2": (context) => const MyHomePage(),
      },
    );
  }
}
