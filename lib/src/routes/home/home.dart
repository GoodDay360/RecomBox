import 'package:flutter/material.dart';
import 'package:recombox/src/global/types.dart';
import 'package:recombox/src/routes/home/widgets/content_section.dart';
import 'package:recombox/src/rust/method/metadata_provider/featured_content.dart';
import 'package:recombox/src/rust/method/metadata_provider/trending_content.dart';
import 'package:recombox/src/widgets/navigation_bar/navigation_bar_horizontal.dart';
import 'dart:async';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';

// -> Local Widgets
import 'package:recombox/src/widgets/navigation_bar/navigation_bar_vertical.dart';
import 'package:recombox/src/widgets/title_bar.dart';
import 'package:shimmer/shimmer.dart';
import 'widgets/featured_section.dart';
// <-

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

	List<FeaturedContentInfo> featuredContentList = [];
	Map<Source, List<TrendingContentInfo>> trendingContentMap = {};



  @override
  void initState() {
    super.initState();

    initMetadataProvider();
  }

  Future<void> initMetadataProvider() async {
		// -> Featured Content
		List<FeaturedContentInfo> featuredContentListResult = [];
		for (final source in Source.values) {
			final result = await featuredContent(source: source.name);
			featuredContentListResult.addAll(result);
		}
		setState(() {
			featuredContentList = featuredContentListResult..shuffle(Random());
		});
		
		// <-

		// -> Trending Content
		Map<Source, List<TrendingContentInfo>> trendingContentMapResult = {};
		for (final source in Source.values) {
			final result = await trendingContent(source: source.name);
			trendingContentMapResult[source] = result;
		}
		setState(() {
			trendingContentMap = trendingContentMapResult;
		});
		// <-
  }

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
                    child: Column(children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.55,
                          viewportFraction: 1.0,
                          autoPlay: featuredContentList.isEmpty ? false : true,
                          autoPlayInterval: Duration(seconds: 8),
                          pauseAutoPlayOnTouch: true,
                          pauseAutoPlayOnManualNavigate: true,
                        ),
                        items: [
													if (featuredContentList.isEmpty)
														Shimmer.fromColors(
															baseColor: Theme.of(context).colorScheme.surfaceContainerHighest,
															highlightColor: Theme.of(context).colorScheme.surface,
															child: Container(
																width: double.infinity,
																height: 200,
																decoration: BoxDecoration(
																	color: Colors.black.withAlpha(50),
																),
															),
														),
													
													for (final item in featuredContentList)
														FeaturedSection(
															featuredContentInfo: item,
														),
                        ],
                      ),
											for (final source in trendingContentMap.keys)
												ContentSection(
													label: "Trending ${source.label}",
													trendingContentList: trendingContentMap[source]!,
												),
                      
                    ])),
              ),
              if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
                Positioned(top: 0, left: 0, right: 0, child: TitleBar()),
              if ((Platform.isWindows ||
                      Platform.isLinux ||
                      Platform.isMacOS) &&
                  (MediaQuery.of(context).size.width < 600))
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: NavigationBarHorizontal(currentIndex: 0)),
            ],
          ),
        )
      ],
    );
  }
}
