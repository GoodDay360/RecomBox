import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';



class ContentCard extends StatefulWidget {
  const ContentCard({
    super.key, 
    required this.id,
    required this.title,
    required this.year,
    required this.rating,
    required this.thumbnailUrl,


  });

  final String id;
  final String title;
  final String year;
  final String rating;
  final String thumbnailUrl;

  @override
  State<ContentCard> createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {

  AppColorsScheme appColors = appColorsNotifier.value;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      clipBehavior: Clip.antiAlias,
      color: Colors.transparent,
      
      child: InkWell(
        onTap: () {
          debugPrint("Card tapped!");
        },
        mouseCursor: SystemMouseCursors.click,
        child: Container(
          width: 150,
          height: 280,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ink.image(
                image: NetworkImage(
                  widget.thumbnailUrl,
                ),
                width: 150,
                height: 225,
                fit: BoxFit.cover,
              ),
              
              Text(
                widget.title,
                style: GoogleFonts.nunito(
                  color: appColors.textPrimary,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 2.5,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: appColors.textSecondary,
                        size: 16,
                      ),
                      Text(
                        widget.year,
                        style: GoogleFonts.nunito(
                            color: appColors.textSecondary,
                            fontSize: 10,
                            decoration: TextDecoration.none,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        spacing: 2.5,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.rating,
                            style: GoogleFonts.nunito(
                                color: appColors.textSecondary,
                                fontSize: 10,
                                decoration: TextDecoration.none,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                          ),
                          Icon(
                            Icons.star,
                            color: appColors.textSecondary,
                            size: 16,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),

              

            ],
          )
        )
  
      )

    );
  }
}