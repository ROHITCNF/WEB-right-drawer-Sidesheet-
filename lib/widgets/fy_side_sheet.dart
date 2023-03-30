import 'package:flutter/material.dart';

//this FySideSheet class represents the functioning of the side sheet
class FySideSheet {
  /// To open the right side sheet from any place just invoke the below function :-
  /// onPressed: () => SideSheet.right(body: Text("Body"), context: context)

  static Future<dynamic> right(
      {
      ///any widget  want to display in the side sheet
      required Widget body,
      required BuildContext context,

      //  width of the side sheet
      double? width,
      String barrierLabel = "Side Sheet",

      //  to dismiss the side sheet by tapping outside of it
      bool barrierDismissible = true,

      // Use sheetBorderRadius to set the outside border radius of the side sheet when opened
      double sheetBorderRadius = 0,
      Color sheetColor = Colors.white,

      //  to set the duration of the animation when the side sheet is opened or closed
      Duration transitionDuration = const Duration(milliseconds: 550)}) async {
    dynamic data = await _showSheetSide(
      body: body,
      width: width,
      rightSide: true,
      context: context,
      barrierLabel: barrierLabel,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.transparent, // updated
      sheetBorderRadius: sheetBorderRadius,
      sheetColor: sheetColor,
      transitionDuration: transitionDuration,
    );
    if (data == null) return '';

    return data;
  }

  static _showSheetSide({
    required Widget body,
    required bool rightSide,
    double? width,
    required BuildContext context,
    required String barrierLabel,
    required bool barrierDismissible,
    required Color barrierColor,
    required double sheetBorderRadius,
    required Color sheetColor,
    required Duration transitionDuration,
  }) {
    BorderRadius borderRadius = BorderRadius.only(
      topLeft: rightSide ? Radius.circular(sheetBorderRadius) : Radius.zero,
      bottomLeft: rightSide ? Radius.circular(sheetBorderRadius) : Radius.zero,
      topRight: !rightSide ? Radius.circular(sheetBorderRadius) : Radius.zero,
      bottomRight:
          !rightSide ? Radius.circular(sheetBorderRadius) : Radius.zero,
    );

    return showGeneralDialog(
      barrierLabel: barrierLabel,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      transitionDuration: transitionDuration,
      context: context,
      //anchorPoint: Offset(0.0, 0.5), TO CHECK HERE ALSO
      pageBuilder: (context, animation1, animation2) {
        return Align(
          alignment:
              (rightSide ? Alignment.centerRight : Alignment.centerLeft),
          child: Material(
            elevation: 1,
            color: Colors.transparent,
            borderRadius: borderRadius,
            child: Container(
                decoration: BoxDecoration(
                  color: sheetColor,
                  borderRadius: borderRadius,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                height: double.infinity,
                width: width ?? MediaQuery.of(context).size.width / 1.4,
                child: body),
          ),
        );
      },
      transitionBuilder: (context, animation1, animation2, child) {
        // final appBarHeight = AppBar().preferredSize.height;
        // final screenHeight = MediaQuery.of(context).size.height;
        // const offsetPercentage = 0.05; // adjust as needed
        // final offset = appBarHeight + (screenHeight * offsetPercentage);

        return SlideTransition(
          position: Tween(
            begin: Offset((rightSide ? 1 : -1), 0.056),
            end: const Offset(0.0, 0.056),
          ).animate(animation1),
          child: child,
        );
      },
    );
  }
}
