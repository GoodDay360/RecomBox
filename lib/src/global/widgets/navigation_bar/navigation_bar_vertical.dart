import 'package:flutter/material.dart';

import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/widgets/navigation_bar/navigate_handler.dart';
import 'package:window_manager/window_manager.dart';

import 'dart:io';

class NavigationBarVertical extends StatefulWidget {
  const NavigationBarVertical(
      {
        super.key, required, 
        required this.currentIndex,
      });

  final int currentIndex;

  @override
  State<NavigationBarVertical> createState() => _NavigationBarVerticalState();
}

class _NavigationBarVerticalState extends State<NavigationBarVertical> {
  late int currentIndex = 0;

  late AppColorsScheme appColors = appColorsNotifier.value;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  void navigate(int index) {
    setState(() {
      currentIndex = index;
    });
    navigateHander(context, index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onPanStart: (_) async {
            if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
              await windowManager.startDragging();
            }
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Image.asset(
              'assets/icon/icon-transparent-white.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: NavigationRail(
              // -> Styles
              labelType: NavigationRailLabelType.all,
              backgroundColor: appColors.primary,

              unselectedIconTheme: IconThemeData(color: appColors.secondary),

              selectedIconTheme: IconThemeData(
                color: appColors.primary,
              ),

              selectedLabelTextStyle: TextStyle(
                color: appColors.textPrimary,
              ),
              unselectedLabelTextStyle: TextStyle(
                color: appColors.textPrimary,
              ),
              indicatorColor: appColors.secondary,
              // <-

              selectedIndex: currentIndex,
              onDestinationSelected: navigate,
              destinations: const [
                NavigationRailDestination(
                  icon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(Icons.home),
                  ),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(Icons.search),
                  ),
                  label: Text('Search'),
                ),
                NavigationRailDestination(
                  icon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(Icons.favorite_outline_rounded),
                  ),
                  selectedIcon: Icon(Icons.favorite_rounded),
                  label: Text('Favorite'),
                ),
                
                NavigationRailDestination(
                  icon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(Icons.settings),
                  ),
                  label: Text('Settings'),
                ),
              ],
            ),
          
          
          )
        ),
      ],
    );
  }
}
