import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/types.dart';
import 'package:recombox/src/routes/home/widgets/content_card.dart';
import 'dart:io';

import 'package:recombox/src/rust/method/metadata_provider/trending_content.dart';

class ContentSection extends StatefulWidget {
  const ContentSection({
    super.key,
    required this.label,
    required this.trendingContentList,
  });

  final String label;
  final List<TrendingContentInfo> trendingContentList;

  @override
  State<ContentSection> createState() => _ContentSectionState();
}

class _ContentSectionState extends State<ContentSection> {
  final _scrollController = ScrollController();

  AppColorsScheme appColors = appColorsNotifier.value;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: (MediaQuery.of(context).size.width < 600) ? EdgeInsets.all(15) : EdgeInsets.only(top: 15, right: 15),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight(700),
                color: appColors.textPrimary,
                fontSize: 24,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 280,
              // color: Colors.green,
              child: Scrollbar(
                  controller: _scrollController,
                  thickness: (Platform.isWindows ||
                          Platform.isLinux ||
                          Platform.isMacOS)
                      ? null
                      : 0,
                  child: ListView.separated(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.trendingContentList.length,
                    itemBuilder: (context, index) {
                      return ContentCard(
                        trendingContentInfo: widget.trendingContentList[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 18);
                    },
                  )
                )
              )
          ],
        ));
  }
}
