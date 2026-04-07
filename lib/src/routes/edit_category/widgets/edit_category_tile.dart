import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/routes/edit_category/dialogs/rename_category.dart';
import 'package:recombox/src/rust/method/favorite/delete_category.dart';

class EditCategoryTile extends StatefulWidget {
  const EditCategoryTile({
    super.key,

    required this.categoryID,
    required this.categoryName,
    required this.initEditCategory,
  });

  final BigInt categoryID;
  final String categoryName;
  final Future<void> Function() initEditCategory;

  @override
  State<EditCategoryTile> createState() => _SetFavoriteTileState();
}

class _SetFavoriteTileState extends State<EditCategoryTile> {

  AppColorsScheme appColors = appColorsNotifier.value;

  String currentCategoryName = '';

  @override
  void initState() {
    super.initState();

    currentCategoryName = widget.categoryName;
  }

  void onRename(String newCategoryName) {
    setState(() {
      currentCategoryName = newCategoryName;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(left: 15),
        child: Row(
          spacing: 8,
          children: [
            Icon(
              Icons.reorder_rounded,
              color: appColors.secondary,
              size: 32,
            ),
            Expanded(
              child: Text(
                currentCategoryName,
                style: GoogleFonts.nunito(
                  color: appColors.textPrimary,
                  fontSize: 32
                ),
              ),
            ),
            
            IconButton(
              mouseCursor: SystemMouseCursors.click,
              onPressed: (){
                showDialog(
                  context: context, 
                  builder: (_) => RenameCategoryDialog(
                    categoryID: widget.categoryID,
                    onRename: onRename,
                  )
                );
              },
              icon: Icon(
                Icons.edit_rounded,
                color: appColors.secondary,
                size: 32,
              ),
            ),

            IconButton(
              mouseCursor: SystemMouseCursors.click,
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    backgroundColor: appColors.tertiary,
                    title: Text(
                      'Do you wish to delete category "$currentCategoryName"?',
                      style: GoogleFonts.nunito(
                        color: appColors.textPrimary,
                      )
                    ),
                    actions: [
                      TextButton(
                        child: Text(
                          'No',
                          style: GoogleFonts.nunito(
                            color: appColors.textPrimary,
                          )
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      TextButton(
                        child: Text(
                          'Yes',
                          style: GoogleFonts.nunito(
                            color: appColors.textPrimary,
                          )
                        ),
                        onPressed: () async {
                          try {
                            await deleteCategory(categoryId: widget.categoryID);
                            widget.initEditCategory();
                            if (!context.mounted) return;
                            Navigator.pop(context);
                          } catch (e) {
                            debugPrint("Delete failed: $e");
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
              icon: Icon(
                Icons.delete_outline_rounded,
                color: appColors.secondary,
                size: 32,
              ),
            )
            
          ],
        )
      )
      
    );
  
  }
}