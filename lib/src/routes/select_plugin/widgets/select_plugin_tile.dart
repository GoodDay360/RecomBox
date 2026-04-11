import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/dialogs/install_plugin/install_plugin_dialog.dart';
import 'package:recombox/src/global/types.dart';
import 'package:recombox/src/rust/method/plugin_provider.dart';
import 'package:recombox/src/rust/method/plugin_provider/get_installed_plugins.dart';
import 'package:recombox/src/rust/method/plugin_provider/install_plugin.dart';
import 'package:recombox/src/rust/method/plugin_provider/remove_plugin.dart';

class SelectPluginTile extends StatefulWidget {
  const SelectPluginTile({
    super.key,
    required this.pluginId,
    required this.pluginInfo,
  }); 

  final String pluginId;
  final InstalledPluginInfo pluginInfo;



  @override
  State<SelectPluginTile> createState() => _SelectPluginTileState();
}

class _SelectPluginTileState extends State<SelectPluginTile> {

  AppColorsScheme appColors = appColorsNotifier.value;

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        mouseCursor: SystemMouseCursors.click,
        onTap: (){

        },
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            children: [
              Image.network(
                widget.pluginInfo.pluginIconUrl,
                width: 50,
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