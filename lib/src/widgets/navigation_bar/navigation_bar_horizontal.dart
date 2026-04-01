import 'package:flutter/material.dart';

import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/widgets/navigation_bar/navigate_handler.dart';

class NavigationBarHorizontal extends StatefulWidget {
  const NavigationBarHorizontal({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  State<NavigationBarHorizontal> createState() =>
      _NavigationBarHorizontalState();
}

class _NavigationBarHorizontalState extends State<NavigationBarHorizontal> {
  late int currentIndex = 0;

  var appColors = appColorsNotifier.value;

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
    return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: appColors.strokePrimary,
            )
          ),
        ),
        padding: const EdgeInsets.all(0),
        child: Row(
          children: [
            Expanded(
                child: NavigationBar(
              // -> Styles
              backgroundColor: appColors.primary,
              indicatorColor: appColors.secondary, // background highlight
              labelTextStyle: WidgetStateProperty.all(
                TextStyle(color: appColors.textPrimary),
              ),

              // <-

              selectedIndex: currentIndex,
              onDestinationSelected: navigate,
              destinations: [
                NavigationDestination(
                  icon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(Icons.home, color: appColors.secondary),
                  ),
                  selectedIcon: Icon(Icons.home, color: appColors.primary),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(Icons.search, color: appColors.secondary),
                  ),
                  selectedIcon: Icon(Icons.search, color: appColors.primary),
                  label: 'Search',
                ),
                NavigationDestination(
                  icon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Icon(Icons.settings, color: appColors.secondary),
                  ),
                  selectedIcon: Icon(Icons.settings, color: appColors.primary),
                  label: 'Settings',
                ),
              ],
            )),
          ],
        ));
  }
}
