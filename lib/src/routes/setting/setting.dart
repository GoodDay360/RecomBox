import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/types.dart';
import 'package:recombox/src/routes/download/widgets/download_card.dart';
import 'package:recombox/src/rust/method/download_provider.dart';
import 'package:recombox/src/rust/method/download_provider/get_all_download.dart';
import 'package:recombox/src/rust/method/download_provider/remove_download.dart';
import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_horizontal.dart';
import 'package:recombox/src/global/widgets/navigation_bar/navigation_bar_vertical.dart';
import 'dart:io';
import 'dart:async';

import 'package:recombox/src/global/widgets/title_bar.dart';



class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => SettingState();
}

class SettingState extends State<SettingScreen> {
  AppColorsScheme appColors = appColorsNotifier.value;

  final List<Map<String, dynamic>> settingItems = [
    {'icon': Icons.style_rounded, 'label': "Appearance"},
    {'icon': Icons.storage_rounded, 'label': "Storage"}
  ];
  
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            if (MediaQuery.of(context).size.width >= 600)
              NavigationBarVertical(
                currentIndex: 4,
              ),
            Expanded(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  spacing: 0,
                  children: [
                    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
                      TitleBar(),
                    
                    Expanded(
                      child: ListView.separated(
                        itemCount: settingItems.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            mouseCursor: SystemMouseCursors.click,
                            onTap: () {
                              
                            },
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(bottom: 15, top: 15, left: 10, right: 10),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Row(
                                spacing: 10,
                                children: [
                                  Icon(
                                    settingItems[index]['icon'], 
                                    color: appColors.secondary,
                                    size: 24,
                                  ),
                                  Text(
                                    settingItems[index]['label'],
                                    style: GoogleFonts.nunito(
                                      color: appColors.textPrimary,
                                      fontSize: 24
                                    ),
                                  ),

                                  const Spacer(),

                                  Icon(
                                    Icons.arrow_drop_down_rounded, 
                                    color: appColors.secondary,
                                    size: 24,
                                  ),
                                ],
                              )
                            )
                          );
                        },

                        separatorBuilder: (context, index) {
                          return Container(
                            height: 1,
                            color: appColors.strokePrimary,
                          );
                        },
                      
                      
                      )
                    )
                  ],
                ),
                bottomNavigationBar: (MediaQuery.of(context).size.width < 600)
                  ? NavigationBarHorizontal(
                    currentIndex: 4,
                  )
                  : null
              )
            ),

          ],
        )
      )
    );
  }
}