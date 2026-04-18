import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_single_instance/flutter_single_instance.dart';
import 'package:media_kit/media_kit.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/rust/frb_generated.dart';
import 'package:recombox/src/rust/method/init/init_rest_server.dart';
import 'package:recombox/src/rust/method/init/init_settings.dart';
import 'package:recombox/src/rust/method/init/init_torrent_session.dart';
import 'package:recombox/src/rust/utils/settings.dart';
import 'package:window_manager/window_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';



Future<int> getFreePort() async {
  // Bind to port 0 → OS picks an available free port
  final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
  final port = server.port;

  // Close immediately so the port can be reused
  await server.close();

  return port;
}



Future<void> initApp() async {
	WidgetsFlutterBinding.ensureInitialized();

  // -> Single Instance
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    if (!(await FlutterSingleInstance().isFirstInstance())) {
      final err = await FlutterSingleInstance().focus();

      if (err != null) {
        debugPrint("Error focusing running instance: $err");
      }
      exit(0);
    }
  }
  // <-

  // -> Hive DB
	WidgetsFlutterBinding.ensureInitialized();
	await Hive.initFlutter();
  
	// <- 


  // -> App Colors
	
	var loadAppColors = await AppColorsScheme.load();
	appColorsNotifier.value = loadAppColors;
	var appColors = appColorsNotifier.value;
	// <-
  
	
	// -> Window Manager
	if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
		await windowManager.ensureInitialized();
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
	}
  
	
	// <-

  // -> Flutter Rust Bridge Initialization
	await RustLib.init();
	await initSettings(settings: Settings(
    port: await getFreePort(),
		paths: Paths(
      appSupportDir: (await getApplicationSupportDirectory()).path,
      appCacheDir: (await getApplicationCacheDirectory()).path, 
      tempDir: (await getTemporaryDirectory()).path
		)
	));
	// <-

  // -> Torrent Session and Rest Server
  await initTorrentSession();
  initRestServer();
  // <-


	

	// -> Flutter Widgets
	WidgetsFlutterBinding.ensureInitialized();
	// <-

	

  // -> Media Kit
  MediaKit.ensureInitialized();
  // <-
}