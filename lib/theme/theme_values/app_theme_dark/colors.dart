import 'package:flutter/material.dart';
import 'package:iclick_books_manager/core/extensions/color_extension.dart';
import 'package:iclick_books_manager/theme/theme_values/base_colors.dart';
import 'package:iclick_books_manager/theme/theme_values/theme_color_variation.dart';

import '../color_codes.dart';

class Colors extends BaseColors {
  @override
  ThemeColorVariation themeColorVariation = ThemeColorVariation(
      primary: ColorCodes.black,
      warning: ColorCodes.orange,
      error: ColorCodes.red,
      success: ColorCodes.blue, //ColorCodes.green
      info: ColorCodes.gray);

  @override
  ThemeColorVariation secondaryThemeColorVariation = ThemeColorVariation(
      primary: ColorCodes.white,
      warning: ColorCodes.white,
      error: ColorCodes.white,
      success: ColorCodes.white, //ColorCodes.green
      info: ColorCodes.white);

  @override
  MaterialColor primarySwatch = ColorCodes.blue
      .createMaterialColor(); //ColorCodes.green.createMaterialColor();

  @override
  Brightness? accentColorBrightness;

  @override
  Color? backgroundColor = ColorCodes.white;

  @override
  Color? bottomAppBarColor;

  @override
  Brightness? brightness;

  @override
  Color? buttonColor = ColorCodes.trinaryLightGray;

  @override
  Color? canvasColor;

  @override
  Color? cardColor = ColorCodes.white;

  @override
  Color? dialogBackgroundColor;

  @override
  Color? disabledColor;

  @override
  Color? dividerColor;

  @override
  Color? errorColor;

  @override
  Color? focusColor;

  @override
  Color? highlightColor;

  @override
  Color? hintColor;

  @override
  Color? hoverColor;

  @override
  Color? indicatorColor;

  @override
  Brightness? primaryColorBrightness;

  @override
  Color? primaryColorDark;

  @override
  Color? primaryColorLight = ColorCodes.white;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? secondaryHeaderColor;

  @override
  Color? selectedRowColor;

  @override
  Color? shadowColor;

  @override
  Color? splashColor;

  @override
  Color? toggleableActiveColor;

  @override
  Color? unselectedWidgetColor;

  @override
  Color accentColor = ColorCodes.gray;

  @override
  Color primaryColor = ColorCodes.blue; //ColorCodes.blue

  @override
  Color appBarBackBtnColor = ColorCodes.white; //ColorCodes.white

  @override
  Color appBarBgColor = ColorCodes.white;

  @override
  Color appBarTextColor = ColorCodes.white; // ColorCodes.gray;

  @override
  Color materialBarButtonDefaultTextColor = ColorCodes.white;

  @override
  Color defaultTextLabelColor = ColorCodes.darkGray;

  @override
  Color defaultTextFieldBorderColor = ColorCodes.trinaryGray;

  @override
  Color defaultTextFieldErrorBorderColor = ColorCodes.red;

  @override
  Color defaultTextFieldErrorTextColor = ColorCodes.red;

  @override
  Color defaultTextFieldFocusedBorderColor = ColorCodes.blue;

  @override
  Color defaultTextFieldLabelColor = ColorCodes.gray;

  @override
  Color defaultTextFieldTextColor = ColorCodes.superLightGray;

  @override
  Color confirmationMessageDefaultNegativeBtnBgColor = ColorCodes.white;

  @override
  Color? balanceDisplayColor = ColorCodes.darkGreen;

  @override
  Color? appDrawerItemSelectedColor = ColorCodes.drawerSelectColor;

  @override
  Color? appDrawerSeparatedColor = ColorCodes.drawerSeparateColor;

  @override
  Color? minusBalance = ColorCodes.pink;

  @override
  Color? plusBalance = ColorCodes.darkGreen;

  @override
  Color? appDraweItemColor = ColorCodes.white;

  @override
  Color defaultTextFieldBackgroundColor = ColorCodes.white;

  @override
  Color? bottomSheetBackgroundColor = ColorCodes.white;

  @override
  Color? bottomSheetTitleColor = ColorCodes.black;

  @override
  Color? bottomSheetItemTextColor = ColorCodes.bottomSheetTextColor;

  @override
  Color materialBarNegativeButtonTextColor = ColorCodes.blue;

  @override
  Color materialBarPositiveButtonTextColor = ColorCodes.white;

  @override
  Color? uniqueIdColor = ColorCodes.trinaryDarkGray;

  @override
  Color? bottomNavigationTextColor = ColorCodes.bottomSheetTextColor;

  @override
  Color? companyNameTextColor = ColorCodes.trinaryDarkGray;

  @override
  Color gradientBlueLeft = ColorCodes.gradientBlueLeft;

  @override
  Color gradientBlueRight = ColorCodes.gradientBlueRight;

  @override
  Color? loanRepaymentSummaryTextColor = ColorCodes.bottomSheetTextColor;

  @override
  Color? loanRepaymentBankSummaryTextColor = ColorCodes.darkGray;

  @override
  Color? searchItemIdColor = ColorCodes.trinaryLightGray;

  @override
  Color? searchItemLabelColor = ColorCodes.bottomSheetTextColor;

  @override
  Color? searchItemValueColor = ColorCodes.searchItemValueTextColor;

  @override
  Color bottomNavBarBgColor = ColorCodes.white;

  @override
  Color bottomNavBarBorderColor = ColorCodes.black;

  @override
  Color bottomNavBarActiveItemColor = ColorCodes.blue;

  @override
  Color bottomNavBarItemColor = ColorCodes.gray;

  @override
  Color gradientWhiteRight = ColorCodes.gradientWhiteRight;

  @override
  Color gradientWhiteLeft = ColorCodes.gradientWhiteLeft;

  @override
  Color liteBlack = ColorCodes.liteBlack;

  @override
  Color defaultDivider = ColorCodes.liteGray;

  @override
  Color? bottomSheetTextColor = ColorCodes.bottomSheetTextColor;

  @override
  Color tabBarDreopSadow = ColorCodes.liteBlackPro;

  @override
  Color tabBarDreopSadowLite = ColorCodes.liteBlackPro2;

  @override
  Color backgroundDarkWhite = ColorCodes.darkWhite;

  @override
  Color dropDownListLabelColor = ColorCodes.lightGray;

  @override
  Color amountColorLightGray = ColorCodes.liteGrayPro;
}
