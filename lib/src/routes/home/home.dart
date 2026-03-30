import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:recombox/src/routes/home/widgets/content_section.dart';
import 'package:recombox/src/rust/frb_generated.dart';
import 'package:recombox/src/widgets/navigation_bar/navigation_bar_horizontal.dart';
import 'dart:async';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';

// -> Local Widgets
import 'package:recombox/src/widgets/navigation_bar/navigation_bar_vertical.dart';
import 'package:recombox/src/widgets/title_bar.dart';
import 'widgets/featured_section.dart';
// <-

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
					NavigationBarVertical(currentIndex: 0),
				Expanded(
					child: Stack(
						children: [
							SizedBox(
								height: double.infinity,
								child: SingleChildScrollView(
									physics: const AlwaysScrollableScrollPhysics(),
									child: Column(
										children: [
											CarouselSlider(
												options: CarouselOptions(
													height: MediaQuery.of(context).size.height * 0.5,
													viewportFraction: 1.0,
													autoPlay: true,
													autoPlayInterval: Duration(seconds: 8),
													pauseAutoPlayOnTouch: true,
													pauseAutoPlayOnManualNavigate: true,
												),
												items: [
													FeaturedSection(
														id: "1",
														title: "Loki",
														bannerUrl: "https://www.ilm.com/wp-content/uploads/2023/10/Loki2-aspect-ratio-2.7-1.jpeg",
														contextual: ["Action", "Adventure", "Fantasy"],
														shortDescription: "After stealing the Tesseract during the events of “Avengers: Endgame,” an alternate version of Loki is brought to the mysterious Time Variance Authority.",
													),
												],
											),
											ContentSection(),
											ContentSection(),
											ContentSection()


										]
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

							if ((Platform.isWindows || Platform.isLinux || Platform.isMacOS) && (MediaQuery.of(context).size.width < 600))
								Positioned(
									bottom: 0,
									left: 0,
									right: 0,
									child: NavigationBarHorizontal(currentIndex: 0)
								),
						],
					),
				)
				
			],
		);
	}
}
