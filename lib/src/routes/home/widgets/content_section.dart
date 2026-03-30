import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/routes/home/widgets/content_card.dart';
import 'dart:io';


class ContentSection extends StatefulWidget {
  const ContentSection({super.key});

  @override
  State<ContentSection> createState() => _ContentSectionState();
}

class _ContentSectionState extends State<ContentSection> {
  final _scrollController = ScrollController();

  AppColorsScheme appColors = appColorsNotifier.value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Continue Watching",
            style: GoogleFonts.nunito(
              color: appColors.textPrimary,
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),
          Container(
            width: double.infinity,
            height: 280,
            // color: Colors.green,
            child: Scrollbar(
              controller: _scrollController,
              thickness: (Platform.isWindows || Platform.isLinux || Platform.isMacOS) ? null : 0,
              child: ListView.separated(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ContentCard(
                    id: "1",
                    title: "Loki",
                    year: "2021 - 3001",
                    rating: "0.5",
                    thumbnailUrl: "https://simkl.in/posters/18/1873097368736b0bbc_ca.webp",
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 18);
                },
              )
            )
          )
        ],
      )
    );
  }
}