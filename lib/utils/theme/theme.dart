import 'package:flutter/material.dart';
import 'package:trex/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:trex/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:trex/utils/theme/custom_themes/chip_theme.dart';
import 'package:trex/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:trex/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:trex/utils/theme/custom_themes/text_field_theme.dart';
import 'package:trex/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipThemeData,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxThemeData,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.lightChipThemeData,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxThemeData,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}
