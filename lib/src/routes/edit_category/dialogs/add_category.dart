import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recombox/src/global/app_color.dart';
import 'package:recombox/src/rust/method/favorite.dart';
import 'dart:math';
import 'package:recombox/src/rust/method/favorite/add_category.dart';


class AddCategoryDialog extends StatefulWidget {
  const AddCategoryDialog({
    super.key,
    this.onAdd,

  });

  final void Function()? onAdd;

  @override
  State<AddCategoryDialog> createState() => _FavoriteDialogState();
}

class _FavoriteDialogState extends State<AddCategoryDialog> {
  
  AppColorsScheme appColors = appColorsNotifier.value;

  
  
  CategoryMap allCategoryMap = CategoryMap(field0: {});
  CategoryMap itemCategoryMap = CategoryMap(field0: {});

  final TextEditingController _textFieldController = TextEditingController(text: "");
  String? errorText;

  @override
  void initState() {
    super.initState();
    
  }

  Future<void> onSubmit(BuildContext context) async {
    if (_textFieldController.text.isEmpty) {
      setState(() {
        errorText = "Category name cannot be empty";
        
      });
      return;
    }

    try{
      await addCategory(categoryName: _textFieldController.text);
    }catch(e){
      debugPrint(e.toString());
      setState(() {
        errorText = "Failed to add category";
      });
    }

    if (widget.onAdd != null) {
      widget.onAdd!();
    }
    if (!context.mounted) return;
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {

    return Dialog(
      backgroundColor: appColors.tertiary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: min(300, MediaQuery.of(context).size.width * 0.9),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.width * 0.9,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Add category',
                  style: GoogleFonts.nunito(
                    color: appColors.textPrimary,
                    fontSize: 28,
                    fontWeight: FontWeight(600),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),

              Container(
                padding: EdgeInsets.all(15),
                child: TextField(
                  onSubmitted: (_) {
                    onSubmit(context);
                  },
                  controller: _textFieldController,
                  onChanged: (value) {
                    setState(() {
                      errorText = null;
                    });
                  },
                  cursorColor: appColors.textPrimary,
                  style: GoogleFonts.nunito(
                    color: appColors.textPrimary
                  ),
                  decoration: InputDecoration(
                    labelText: "New Category Name",
                    labelStyle: GoogleFonts.nunito(
                      color: appColors.textSecondary
                    ),
                    errorText: errorText,
                    errorStyle: GoogleFonts.nunito(
                      color: appColors.textError
                    ),
                    
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: appColors.secondary,
                        width: 2.0,
                      ),
                    ),
                  ),
                  
                ),
              ),
                
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom(
                        enabledMouseCursor: SystemMouseCursors.click,
                      ),
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.nunito(
                          color: appColors.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight(600),
                        ),
                      
                      ),
                    ),

                    TextButton(
                      
                      onPressed: ()  {
                        onSubmit(context);
                      },
                      style: TextButton.styleFrom(
                        enabledMouseCursor: SystemMouseCursors.click,
                      ),
                      child: Text(
                        "Add",
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
