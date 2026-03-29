import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:recombox/src/rust/frb_generated.dart';
import 'dart:async';
import 'dart:io';

import 'package:recombox/src/widgets/navigation_bar/navigation_bar_wide.dart';
import 'package:recombox/src/widgets/navigation_bar/title_bar.dart';

class Home extends StatefulWidget {
	const Home({super.key});

	@override
	State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	@override
	Widget build(BuildContext context) {
		return Row(
			children: [
				if (MediaQuery.of(context).size.width >= 600)
					NavigationBarWide(currentIndex: 0),
				Expanded(
					child: Stack(
						children: [
							SizedBox(
								height: double.infinity,
								child: SingleChildScrollView(
									child: Column(
										children: [
											Image.network(
												"https://www.ilm.com/wp-content/uploads/2023/10/Loki2-aspect-ratio-2.7-1.jpeg",
												width: double.infinity,
												height: MediaQuery.of(context).size.height * 0.5,
												fit: BoxFit.cover,
												alignment: Alignment.center,
											),
											Container(
												width: double.infinity,
												height: 200,
												color: Colors.purple,
											),

											Container(
												width: double.infinity,
												height: 200,
												color: Colors.purple,
											),
										],
									)
								),
							),

							if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
								Positioned(
									top: 0,
									left: 0,
									right: 0,
									child: TitleBar()
								),

							if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
								Positioned(
									bottom: 0,
									left: 0,
									right: 0,
									child: TitleBar()
								),
						],
					),
				)
				
			],
		);
	}
}
