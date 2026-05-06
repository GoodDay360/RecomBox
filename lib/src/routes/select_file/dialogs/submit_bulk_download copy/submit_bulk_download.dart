import 'package:animated_tree_view/tree_view/tree_node.dart';
import 'package:animated_tree_view/tree_view/tree_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/global/bulk_download.dart';
import 'dart:math';




class SubmitBulkDownload extends StatefulWidget {
  const SubmitBulkDownload({
    super.key,
    this.onChange,
  });

  final VoidCallback? onChange;

  @override
  State<SubmitBulkDownload> createState() => _SubmitBulkDownloadState();
}

class _SubmitBulkDownloadState extends State<SubmitBulkDownload> {

  AppColorsScheme appColors = appColorsNotifier.value;
  
  TreeNode treeRoot = TreeNode<BulkDownloadValue>.root(data: BulkDownloadValue());
    

  // final TextEditingController _textEditingController = TextEditingController(text: '');
  // FocusNode searchFocus = FocusNode();


  bool isLoading = false;
  bool isInstalling = false;

  @override
  void initState() {
    super.initState();
    
    initDialog();
  }

  Future<void> initDialog({bool forceReload=true}) async {
    if (forceReload){
      setState(() {
        isLoading = true;
      });
    }

    try{

      var newTreeNode = TreeNode<BulkDownloadValue>.root(data: BulkDownloadValue());

      bulkDownload.get().forEach((episodeIndex, value) {
        final episodeKey = "S${(bulkDownload.seasonIndex!+BigInt.from(1)).toString().padLeft(2,'0')}E${(episodeIndex+BigInt.from(1)).toString().padLeft(2,'0')}";

        newTreeNode.addAll([
          TreeNode<BulkDownloadValue>(key: episodeKey, data: BulkDownloadValue())..expansionNotifier.value = true,
        ]);
      });
      
      if (context.mounted){
        setState(() {
          treeRoot = newTreeNode;
        });
      }
      

    
    }catch(e){
      debugPrint(e.toString());
    }

    
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    

    return Dialog(
      backgroundColor: appColors.tertiary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: min(500, MediaQuery.of(context).size.width * 0.9),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.9,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Preview Bulk Download',
                  style: GoogleFonts.nunito(
                    color: appColors.textPrimary,
                    fontSize: 28,
                    fontWeight: FontWeight(600),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              
              if (isLoading) 
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: appColors.secondary,
                      
                      ),
                    ),
                ),

              if (!isLoading) ...[
                if (treeRoot.children.isEmpty)
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "No categories found",
                      style: GoogleFonts.nunito(
                        color: appColors.textPrimary,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),

                if (treeRoot.children.isNotEmpty) ...[
                  
                  Flexible(
                    child: CustomScrollView(
                      shrinkWrap: true, // Helps inside a Dialog
                      slivers: [
                        SliverTreeView.simple(
                          tree: treeRoot,
                          showRootNode: false,
                          builder: (context, node) {
                            // Note: node.isExpanded is often safer for the UI check
                            return ListTile(
                              title: Text(
                                node.key,
                                style: GoogleFonts.nunito(
                                  color: appColors.textPrimary,
                                  fontSize: 18
                                ),
                              ),
                              
                              subtitle: node.expansionNotifier.value 
                                ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('- File ID: ${(node.data as BulkDownloadValue).linkedFileID??"not selected"}',
                                      style: GoogleFonts.nunito(
                                        color: appColors.textSecondary,
                                        fontSize: 16
                                      ),
                                    ),
                                    Text('- File Name: ${(node.data as BulkDownloadValue).linkedFileName??"not selected"}',
                                      style: GoogleFonts.nunito(
                                        color: appColors.textSecondary,
                                        fontSize: 16
                                      ),
                                    ),
                                  ],
                                )
                                : null,
                              contentPadding: EdgeInsets.only(left: node.level * 16.0),
                              leading: Icon(
                                (node.expansionNotifier.value ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded),
                                color: appColors.textPrimary,
                              ),
                              onTap: () {
                                setState(() {
                                  node.expansionNotifier.value = !node.expansionNotifier.value;
                                });
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              
                
              ],

              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spacing: 15,
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        enabledMouseCursor: SystemMouseCursors.click,
                      ),
                      child: Text(
                        "Close",
                        style: GoogleFonts.nunito(
                          color: appColors.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                    
                    TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        enabledMouseCursor: SystemMouseCursors.click,
                      ),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.nunito(
                          color: appColors.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                  ],
                ),
              )

            
            ],
          ),
        )
      ),
    );
  }
}
