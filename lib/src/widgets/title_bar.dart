import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'package:recombox/src/global/app_color.dart';

class TitleBar extends StatefulWidget {
  const TitleBar({super.key});

  @override
  State<TitleBar> createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  var appColors = appColorsNotifier.value;

  @override
  void initState() {
    super.initState();
  }

  Future<void> minimize() async {
    await windowManager.minimize();
  }

  Future<void> fullscreen() async {
    await windowManager.isMaximized()
        ? await windowManager.unmaximize()
        : await windowManager.maximize();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onPanStart: (_) async {
          await windowManager.startDragging();
        },
        child: Container(
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: minimize,
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.zero, // <-- change radius here
                      ),
                    ),
                  ),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(
                      Icons.minimize,
                      color: appColors.secondary,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: fullscreen,
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(
                      Icons.rectangle_outlined,
                      color: appColors.secondary,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: fullscreen,
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    overlayColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return Colors.red; // hover color
                        }
                        return null; // default
                      },
                    ),
                  ),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(
                      Icons.close,
                      color: appColors.secondary,
                    ),
                  ),
                ),
              ],
            )));
  }
}
