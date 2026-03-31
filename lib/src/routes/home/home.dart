import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recombox/src/global/app_color.dart';
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

  bool isLoading = true;

	List<FeaturedContentInfo> featuredContentList = [];
	Map<Source, List<TrendingContentInfo>> trendingContentMap = {};

  AppColorsScheme appColors = appColorsNotifier.value;


  @override
  void initState() {
    super.initState();

    initMetadataProvider();
  }

  Future<void> initMetadataProvider({bool fromCache=true}) async {
    debugPrint((await getApplicationCacheDirectory()).path);
    setState(() {
      isLoading = true;
    });
		// -> Featured Content
		List<FeaturedContentInfo> featuredContentListResult = [];
		for (final source in Source.values) {
			final result = await featuredContent(source: source.name, fromCache: fromCache);
			featuredContentListResult.addAll(result);
		}
		setState(() {
			featuredContentList = featuredContentListResult..shuffle(Random());
		});
		
		// <-

		// -> Trending Content
		Map<Source, List<TrendingContentInfo>> trendingContentMapResult = {};
		for (final source in Source.values) {
			final result = await trendingContent(source: source.name, fromCache: fromCache);
			trendingContentMapResult[source] = result;
		}
		setState(() {
			trendingContentMap = trendingContentMapResult;
		});
		// <-

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 600)
            NavigationBarVertical(
              currentIndex: 0,
              useRefresh: true,
              onRefresh: () {
                initMetadataProvider(fromCache: false);
              },
            ),
          Expanded(
            child: Stack(
              children: [
                if (isLoading)
                  Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      color: appColors.secondary,
                    )
                  ),
                if (!isLoading)
                  SizedBox(
                    height: double.infinity,
                    child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Stack(
                              children: [
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
                                    for (final item in featuredContentList)
                                      FeaturedSection(
                                        featuredContentInfo: item,
                                      ),
                                  ],
                                ),
                                
                                if (!((Platform.isWindows || Platform.isLinux || Platform.isMacOS)))
                                  Container(
                                    padding: EdgeInsets.only(right: 10, top: 10),
                                    alignment: Alignment.topRight,
                                    child: InkWell(
                                        mouseCursor: SystemMouseCursors.click,
                                        onTap: () {
                                          initMetadataProvider(fromCache: false);
                                        },
                                        child: Icon(
                                          color: appColors.secondary,
                                          Icons.refresh
                                        )
                                      )
                                  ),
                                  
                              ]
                            ),
                            for (final source in trendingContentMap.keys)
                              ContentSection(
                                label: "Trending ${source.label}",
                                trendingContentList: trendingContentMap[source]!,
                              ),
                          ]
                        )
                      ),
                  ),
                  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
                    Positioned(top: 0, left: 0, right: 0, child: TitleBar()),
                  if ((Platform.isWindows || Platform.isLinux || Platform.isMacOS) && (MediaQuery.of(context).size.width < 600))
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: NavigationBarHorizontal(
                        currentIndex: 0,
                        
                      )
                    ),
                  
              ],
            )
            
          )
        ],
      )
    );
  }
}
