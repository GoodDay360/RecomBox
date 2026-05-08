import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/routes/select_plugin/select_plugin.dart';
import 'package:recombox/src/routes/select_source/select_source.dart';
import 'package:recombox/src/rust/method/plugin_provider/get_installed_plugins.dart';

class SelectPluginTile extends StatefulWidget {
  const SelectPluginTile({
    super.key,
    required this.pluginInfo,
    required this.selectPluginScreenArguments,
  }); 

  final InstalledPluginInfo pluginInfo;
  final SelectPluginScreenArguments selectPluginScreenArguments;



  @override
  State<SelectPluginTile> createState() => _SelectPluginTileState();
}

class _SelectPluginTileState extends State<SelectPluginTile> {

  AppColorsScheme appColors = appColorsNotifier.value;

  @override
  void initState() {
    super.initState();
    debugPrint(widget.pluginInfo.pluginPath);
  }

  void onNavigate() {
    Navigator.pushNamed(
      context,
      "/select_source",
      arguments: SelectSourceScreenArguments(
        pluginPath: widget.pluginInfo.pluginPath,
        selectPluginScreenArguments: widget.selectPluginScreenArguments
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        mouseCursor: SystemMouseCursors.click,
        onTap: onNavigate,
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            children: [
              Image.network(
                widget.pluginInfo.pluginIconUrl,
                width: 50,
                errorBuilder: (context, error, stackTrace) {
                  // This widget is displayed if the image fails to load
                  return const Icon(
                    Icons.broken_image, 
                    size: 50, 
                    color: Colors.grey,
                  );
                },
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.pluginInfo.pluginName,
                        style: GoogleFonts.nunito(
                          color: appColors.textPrimary,
                          fontSize: 24
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "From: ${widget.pluginInfo.manifestRepoName}",
                        style: GoogleFonts.nunito(
                          color: appColors.textSecondary,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                  
                )
              ),
            ]
          )
        )
      )
    );
  
  }
}