import 'package:flutter/material.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/types.dart';
import 'package:recombox/src/routes/home/widgets/content_section.dart';
import 'package:recombox/src/rust/method/metadata_provider/featured_content.dart';
import 'package:recombox/src/rust/method/metadata_provider/trending_content.dart';
import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_horizontal.dart';
import 'dart:async';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';

// -> Local Widgets
import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_vertical.dart';
import 'package:recombox/src/global/widgets/title_bar.dart';
// <-

class WatchScreen extends StatefulWidget {
  const WatchScreen({super.key});

  @override
  State<WatchScreen> createState() => _WatchState();
}

class _WatchState extends State<WatchScreen> {

  bool isLoading = false;

	List<FeaturedContentInfo> featuredContentList = [];
	Map<Source, List<TrendingContentInfo>> trendingContentMap = {};

  AppColorsScheme appColors = appColorsNotifier.value;


  @override
  void initState() {
    super.initState();

    initMetadataProvider();
  }

  Future<void> initMetadataProvider({bool fromCache=true}) async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    try{
      var url = "magnet:?xt=urn:btih:0CC8C50744167764AD98BC156AE172CEA5280133&dn=They.Will.Kill.You.2026.1080p.TELESYNC.x264-SyncUP&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce&tr=udp%3A%2F%2Ftracker.bittor.pw%3A1337%2Fannounce&tr=udp%3A%2F%2Fpublic.popcorn-tracker.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.dler.org%3A6969%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969&tr=udp%3A%2F%2Fopen.demonii.com%3A1337%2Fannounce&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Ftorrent.gresille.org%3A80%2Fannounce&tr=udp%3A%2F%2Fp4p.arenabg.com%3A1337&tr=udp%3A%2F%2Ftracker.internetwarriors.net%3A1337";
      
    }catch(e){
      debugPrint(e.toString());
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [

          ],
        )
      )
    );
  }
}
