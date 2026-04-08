import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/types.dart';
import 'package:recombox/src/routes/search/widgets/search_tile.dart';
import 'package:recombox/src/rust/method/metadata_provider/search_content.dart';
import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_horizontal.dart';
import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_vertical.dart';

import 'package:recombox/src/global/widgets/title_bar.dart';
import 'package:recombox/src/rust/method/plugin_provider/get_installed_plugins.dart';
import 'package:recombox/src/rust/method/plugin_provider/get_plugin_list.dart';

import 'dart:io';
import 'dart:math';


class SelectPluginScreenArguments {
  Source source;
  String id;

  SelectPluginScreenArguments({
    required this.source,
    required this.id
  });
}

class SelectedPluginScreen extends StatefulWidget {
  const SelectedPluginScreen({super.key});

  @override
  State<SelectedPluginScreen> createState() => _SelectedPluginState();
}

class _SelectedPluginState extends State<SelectedPluginScreen> {
  AppColorsScheme appColors = appColorsNotifier.value;

  final TextEditingController _textEditingController = TextEditingController(text: '');
  FocusNode searchFocus = FocusNode();

  late SelectPluginScreenArguments args;
  
  @override
  void initState() {
    super.initState();

    // Defer until after build context is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final rawArgs = ModalRoute.of(context)?.settings.arguments;

      args = rawArgs is SelectPluginScreenArguments
          ? rawArgs
          : SelectPluginScreenArguments(
              source: Source.movies,
              id: "%2F53906%2Fspider-man",
          );

      debugPrint(args.toString());
      initSelectPlugin();
      
    });
  }

  @override
  void dispose() {

    super.dispose();
    
    
  }

  Future<void> initSelectPlugin() async {
    
    Map<String, InstalledPluginInfo> installedPluginList = await getInstalledPlugins(source: args.source.name);

    debugPrint(installedPluginList.toString());

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
              TitleBar(),
            Expanded(
              child: Stack(
                children: [
                  Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Column(
                      spacing: 0,
                      children: [
                        

                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            spacing: 10,
                            children: [
                              IconButton(
                                mouseCursor: SystemMouseCursors.click,
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: appColors.secondary,
                                ),
                              ),
                              Text(
                                'Select plugin',
                                style: GoogleFonts.nunito(
                                  color: appColors.textPrimary,
                                  fontSize: 28,
                                  fontWeight: FontWeight(600),
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1,
                                  color: appColors.strokePrimary
                                )
                              )
                            ),
                            width: double.infinity,
                            height: 60,
                            child: GestureDetector(
                              onTap: (){
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 10),
                                height: double.infinity,
                                child: Row(
                                  spacing: 8,
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: appColors.textPrimary,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        controller: _textEditingController,
                                        onChanged: (_){
                                          
                                        },
                                        onSubmitted: (value){
                                          
                                        },
                                        cursorColor: appColors.textPrimary,
                                        focusNode: searchFocus,
                                        style: GoogleFonts.nunito(
                                          fontSize: 24,
                                          color: appColors.textPrimary,
                                        ),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Search",
                                          hintStyle: TextStyle(
                                            color: appColors.textPrimary,
                                          )
                                        ),
                                      )
                                    )
                                  ],
                                )
                              )
                            )
                          ),

                        )
                      ],
                    ),
                    
                  ),
                  Row(
                    children: [
                      
                      if (MediaQuery.of(context).size.width > 400)
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            color: Colors.black.withAlpha(80),
                          ),
                        ),

                      Container(
                        width: min(MediaQuery.of(context).size.width, 400),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: appColors.primary,
                          border: MediaQuery.of(context).size.width > 400 
                            ? Border(
                              left: BorderSide(
                                width: 1,
                                color: appColors.strokePrimary
                              ),
                            )
                            : null
                        ),
                      ),
                    ],
                  ),
                  
                ],
              )
            )
          ],
        )
      )
    );
  }
}