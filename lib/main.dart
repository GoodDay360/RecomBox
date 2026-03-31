import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:recombox/src/rust/frb_generated.dart';
import 'package:window_manager/window_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:recombox/src/global/app_color.dart';

import 'src/routes/home/home.dart';

import 'dart:ui';

// Routes Imports

var logger = Logger();

Future<void> main() async {
	// -> Flutter Rust Bridge
	await RustLib.init();
	WidgetsFlutterBinding.ensureInitialized();
	// <-

	// -> Hive DB
	WidgetsFlutterBinding.ensureInitialized();

	await Hive.initFlutter();

	// <- 

	// -> Window Manager
	WidgetsFlutterBinding.ensureInitialized();
	await windowManager.ensureInitialized();
	// <-

	// -> App Colors
	
	var loadAppColors = await AppColorsScheme.load();
	appColorsNotifier.value = loadAppColors;
	var appColors = appColorsNotifier.value;
	// <-
	

	WindowOptions windowOptions = WindowOptions(
		size: Size(800, 600),
		center: true,
		backgroundColor: appColors.primary,
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

class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // Just return the child directly, no animation
    return child;
  }
}


class App extends StatelessWidget {
	const App({super.key});
	
	@override
	Widget build(BuildContext context) {
		return ValueListenableBuilder<AppColorsScheme>(
			valueListenable: appColorsNotifier,
			builder: (context, colors, _) {
				return  MaterialApp(
          theme: ThemeData(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android: NoTransitionsBuilder(),
                TargetPlatform.iOS: NoTransitionsBuilder(),
                TargetPlatform.macOS: NoTransitionsBuilder(),
                TargetPlatform.windows: NoTransitionsBuilder(),
                TargetPlatform.linux: NoTransitionsBuilder(),
              },
            ),
          ),
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse},
          ),

					debugShowCheckedModeBanner: false,
					initialRoute: "/",
					title: 'RecomBox',
					routes: {
						"/": (context) => const Home(),
						// "/2": (context) => const MyHomePage(),
					},
				);
			}
		);
	}
}
