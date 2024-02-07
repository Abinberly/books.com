import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes{
    static TextStyle appTitle({required double fontSize}) {
    return GoogleFonts.permanentMarker(
        color: AppThemes.subTitleColor, fontSize: fontSize,fontWeight: FontWeight.bold);
  }
   static TextStyle appSubtitle1({required double fontSize}) {
    return GoogleFonts.didactGothic(
        color: AppThemes.titleColor, fontSize: fontSize,fontWeight: FontWeight.bold);
  }
  static TextStyle appSubtitle({required double fontSize}) {
    return GoogleFonts.didactGothic(
        color: AppThemes.primaryGreen, fontSize: fontSize,fontWeight: FontWeight.bold);
  }
  static TextStyle drawerAppTitle({required double fontSize}) {
    return GoogleFonts.permanentMarker(
        color: AppThemes.primaryGreen, fontSize: fontSize,fontWeight: FontWeight.bold);
  }
  static TextStyle drawerText({required double fontSize}) {
    return GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            color: AppThemes.primaryGreen,
            fontSize: fontSize);
  }
  static Color primaryGreen = const Color(0xFF3A6B35);
  static Color titleColor = const Color(0xFFE3B448);
  static Color subTitleColor = const Color(0xFFCBD18F);
  static Color backGroundColor = const Color(0xFF86B049);
  static Color lightGreenColor = const Color(0xFFD1FFBD);

}