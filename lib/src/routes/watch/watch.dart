import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:mime/mime.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/types.dart';
import 'package:recombox/src/routes/home/widgets/content_section.dart';
import 'package:recombox/src/routes/watch/dialogs/audio_track_control.dart';
import 'package:recombox/src/rust/method/get_settings.dart';
import 'package:recombox/src/rust/method/metadata_provider/featured_content.dart';
import 'package:recombox/src/rust/method/metadata_provider/trending_content.dart';
import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_horizontal.dart';
import 'dart:async';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math';


import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_vertical.dart';
import 'package:recombox/src/global/widgets/title_bar.dart';
import 'package:recombox/src/rust/method/torrent_provider/free_torrent_handle.dart';
import 'package:snowflaker/snowflaker.dart';


class WatchScreenArguments {
  String viewID;
  Source source;
  String torrentSource;
  String mimeType;
  BigInt fileID;
  BigInt season;
  BigInt episode;

  WatchScreenArguments({
    required this.viewID,
    required this.source,
    required this.torrentSource,
    required this.mimeType,
    required this.fileID,
    required this.season,
    required this.episode
  });
}




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

  WatchScreenArguments? args;

  late final player = Player();
  late final controller = VideoController(
    player,
    configuration: VideoControllerConfiguration(
      enableHardwareAcceleration: true
    )
  );
  

  @override
  void initState() {
    super.initState();
    // Defer until after build context is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final rawArgs = ModalRoute.of(context)?.settings.arguments;
      setState(() {
        args = rawArgs is  WatchScreenArguments
            ? rawArgs
            :  WatchScreenArguments(
              viewID: "72673844%20loki-test",
              source: Source.tv,
              torrentSource: "magnet:?xt=urn:btih:7A3736A3B7DB99F57FC0A35FA8270059CDD3B741&dn=The%20Amazing%20SpiderMan%20(2012)%201080p%20BrRip%20x264%20-%20YIFY&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce&tr=udp%3A%2F%2Ftracker.bittor.pw%3A1337%2Fannounce&tr=udp%3A%2F%2Fpublic.popcorn-tracker.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.dler.org%3A6969%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969&tr=udp%3A%2F%2Fopen.demonii.com%3A1337%2Fannounce&tr=udp%3A%2F%2Fglotorrents.pw%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Ftorrent.gresille.org%3A80%2Fannounce&tr=udp%3A%2F%2Fp4p.arenabg.com%3A1337&tr=udp%3A%2F%2Ftracker.internetwarriors.net%3A1337",
              mimeType: "video/mp4",
              fileID: BigInt.from(0),
              season: BigInt.from(1),
              episode: BigInt.from(1)
            );
      });
      debugPrint(args.toString());
      initWatch();
    });

    
  }

  @override
  void dispose() {
    super.dispose();
  }

  

  late BigInt handleID;

  Future<void> initWatch({bool fromCache=true}) async {
    if (!context.mounted) return;

    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    try{
      
      final snowflaker = Snowflaker(workerId: 1, datacenterId: 1);
      setState(() {
        handleID = BigInt.from(snowflaker.nextId().toInt());
      });
      
      final settings = await getSettings();

      final port = settings.port;
      debugPrint(port.toString());
      final uri = Uri(
        scheme: 'http',
        host: '127.0.0.1',
        port: port,
        path: 'stream_video',
        queryParameters: {
          'handle_id': handleID.toString(),
          'torrent_source': args!.torrentSource,
          'mime_type': args!.mimeType,
          'file_id': args!.fileID.toString(),
          'view_id': args!.viewID,
          'season': args!.season.toString(),
          'episode': args!.episode.toString()
        },
      );

      debugPrint(uri.toString());

      player.open(Media(uri.toString()));
      // player.open(Media("https://github.com/ietf-wg-cellar/matroska-test-files/raw/refs/heads/master/test_files/test5.mkv"));
      
      debugPrint(handleID.toString());
    }catch(e){
      debugPrint(e.toString());
    }

    if (context.mounted){
      setState(() {
        isLoading = false;
      });
    }
    
  }

  Widget? controlWidget;
  void onCloseControlWidget() {
    if (context.mounted){
      setState(() {
        controlWidget = null;
      });
    }
  }

  Future<void> unloadHandle() async {
    player.dispose();
    await freeTorrentHandle(handleId: handleID);
  }

  @override
  Widget build(BuildContext context) {
    // Listen to audio tracks
    player.stream.tracks.listen((tracks) {
      for (final a in tracks.audio) {
        debugPrint('Audio track: ${a.id} ${a.language} ${a.codec}');
      }
    });

  List<Widget> topButtonBar = [
    IconButton(
      mouseCursor: SystemMouseCursors.click,
      iconSize: 32,
      color: appColors.secondary,
      onPressed: () async {
        await unloadHandle();
        if (context.mounted){
          Navigator.pop(context);
        }
      },
      icon: Icon(
        Icons.arrow_back_rounded,
        color: appColors.secondary,
      ),
    ),
    const Spacer(),
    
    IconButton(
      mouseCursor: SystemMouseCursors.click,
      iconSize: 32,
      color: appColors.secondary,
      onPressed: (){
        if (context.mounted){
          showDialog(
            context: context, 
            builder: (_)=>AudioTrackControlDialog(
              player: player 
            )
          );
        }
      } ,
      icon: Icon(Icons.audio_file_rounded)
    )
  
  ];

    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
              TitleBar(),

            Expanded(
              // Use [Video] widget to display video output.
              child: Stack(
                children: [
                  if (Platform.isLinux || Platform.isWindows || Platform.isMacOS)
                    MaterialDesktopVideoControlsTheme(
                      fullscreen: MaterialDesktopVideoControlsThemeData(
                        padding: const EdgeInsets.all(25),
                        buttonBarButtonSize: 32,
                        buttonBarButtonColor: appColors.secondary,
                        topButtonBar: topButtonBar,
                      ),
                      normal: MaterialDesktopVideoControlsThemeData(
                        padding: const EdgeInsets.all(25),
                        topButtonBar: topButtonBar,
                        
                      ),
                      
                      child: Scaffold(
                        body: Video(
                          controller: controller,
                        ),
                      ),
                    ),
                  
                  if (!(Platform.isLinux || Platform.isWindows || Platform.isMacOS))
                    MaterialVideoControlsTheme(
                      fullscreen: MaterialVideoControlsThemeData(
                        padding: const EdgeInsets.all(25),
                        topButtonBar: topButtonBar,
                      ),
                      normal: MaterialVideoControlsThemeData(
                        padding: const EdgeInsets.all(25),
                        topButtonBar: topButtonBar,
                        
                      ),
                      
                      child: Scaffold(
                        body: Video(
                          controller: controller,
                        ),
                      ),
                    ),
                  
                ],
              ),
            )
          ],
        )
      )
    );
  }
}


// itemBuilder: (ctx) => player.state.tracks.audio
//           .where((track) => track.id != 'auto' && track.id != 'no' && track.codec != null)
//           .map((track) => PopupMenuItem<AudioTrack>(
//                 value: track,
//                 child: Text("Audio: ${track.id} | ${track.language ?? 'Default'}"),
//               ))
//           .toList(),


    