import 'package:flutter/material.dart';

import 'package:recombox/src/global/app_color.dart';

class NavigationBarWide extends StatefulWidget {
	const NavigationBarWide({super.key, required this.currentIndex});

	final int currentIndex;

	@override
	State<NavigationBarWide> createState() => _NavigationBarWideState();
}

class _NavigationBarWideState extends State<NavigationBarWide> {

	late int currentIndex = 0;

	@override
	void initState() {
		super.initState();
		currentIndex = widget.currentIndex;
	}

	void navigate(int index) {
		setState(() {
			currentIndex = index;
		});
	}

	@override
	Widget build(BuildContext context) {
		return Padding(
			padding: const EdgeInsets.all(8),
		
			child: Column(
				children: [
					Padding(
						padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
						child: Image.asset(
							'assets/icon/icon-transparent-white.png',
							width: 30,
							height: 30,
							fit: BoxFit.cover,
						),
					),
					Expanded(
						child: NavigationRail(
							// -> Styles
							labelType: NavigationRailLabelType.all,
							backgroundColor: AppColor.primary,

							unselectedIconTheme: const IconThemeData(color: AppColor.secondary),

							selectedIconTheme: IconThemeData(
								color: AppColor.primary,
							),

							selectedLabelTextStyle: const TextStyle(
								color: AppColor.textPrimary,
							),
							unselectedLabelTextStyle: const TextStyle(
								color: AppColor.textPrimary,
							),
							indicatorColor: AppColor.secondary,
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
										child: Icon(Icons.settings),
									),
									label: Text('Settings'),
								),
							],
						),
					),
				],
			)
		);
	}
}
