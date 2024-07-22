import 'package:flutter/material.dart';

import 'theme_color_variation.dart';

abstract class BaseColors {
  abstract ThemeColorVariation themeColorVariation;
  abstract ThemeColorVariation secondaryThemeColorVariation;

  ///
  /// APP BAR COLOR
  ///
  abstract Color appBarTextColor;
  abstract Color appBarBackBtnColor;
  abstract Color appBarBgColor;

  ///
  /// BOTTOM NAV BAR COLOR - START
  ///
  abstract Color bottomNavBarBorderColor;
  abstract Color bottomNavBarBgColor;
  abstract Color bottomNavBarItemColor;
  abstract Color bottomNavBarActiveItemColor;

  ///
  /// MATERIAL BAR BUTTON - START
  /// MATERIAL BAR BUTTON
  ///
  abstract Color materialBarButtonDefaultTextColor;
  abstract Color materialBarPositiveButtonTextColor;
  abstract Color materialBarNegativeButtonTextColor;

  ///
  /// MATERIAL BAR BUTTON - END
  ///

  ///
  /// DEFAULT TEXT FIELD
  ///
  abstract Color defaultTextFieldLabelColor;
  abstract Color defaultTextFieldTextColor;
  abstract Color defaultTextFieldErrorTextColor;
  abstract Color defaultTextFieldBorderColor;
  abstract Color defaultTextFieldFocusedBorderColor;
  abstract Color defaultTextFieldErrorBorderColor;
  abstract Color defaultTextFieldBackgroundColor;

  ///
  /// CONFIRMATION MESSAGE
  ///

  abstract Color confirmationMessageDefaultNegativeBtnBgColor;

  ///
  /// BASE THEME COLORS
  ///
  abstract Color primaryColor;
  abstract Color accentColor;
  abstract MaterialColor primarySwatch;
  abstract Brightness? brightness;
  abstract Brightness? primaryColorBrightness;
  abstract Color? primaryColorLight;
  abstract Color? primaryColorDark;
  abstract Brightness? accentColorBrightness;
  abstract Color? canvasColor;
  abstract Color? shadowColor;
  abstract Color? scaffoldBackgroundColor;
  abstract Color? bottomAppBarColor;
  abstract Color? cardColor;
  abstract Color? dividerColor;
  abstract Color? focusColor;
  abstract Color? hoverColor;
  abstract Color? highlightColor;
  abstract Color? splashColor;
  abstract Color? selectedRowColor;
  abstract Color? unselectedWidgetColor;
  abstract Color? disabledColor;
  abstract Color? buttonColor;
  abstract Color? secondaryHeaderColor;
  abstract Color? backgroundColor;
  abstract Color? dialogBackgroundColor;
  abstract Color? indicatorColor;
  abstract Color? hintColor;
  abstract Color? errorColor;
  abstract Color? toggleableActiveColor;

  ///
  /// BALANCE DISPLAY COLORS
  ///

  abstract Color? balanceDisplayColor;
  abstract Color? minusBalance;
  abstract Color? plusBalance;

  ///
  /// DRAWER COLORS
  ///
  abstract Color? appDrawerItemSelectedColor;
  abstract Color? appDrawerSeparatedColor;
  abstract Color? appDraweItemColor;

  ///
  /// BOTTOM SHEET COLORS
  ///

  ///
  /// BOTTOM SHEET COLORS - START
  ///

  abstract Color? bottomSheetBackgroundColor;
  abstract Color? bottomSheetTitleColor;
  abstract Color? bottomSheetItemTextColor;
  abstract Color? bottomSheetTextColor;

  ///
  /// BOTTOM SHEET COLORS - END
  ///

  ///
  /// SIGN-IN PAGE COLORS - START
  /// SIGN-IN PAGE COLORS
  ///

  abstract Color? uniqueIdColor;
  abstract Color? bottomNavigationTextColor;
  abstract Color? companyNameTextColor;

  ///

  /// SIGN-IN PAGE COLORS -  END
  ///

  ///
  /// GRADIENT COLORS
  ///

  abstract Color gradientBlueLeft;
  abstract Color gradientBlueRight;

  abstract Color gradientWhiteLeft;
  abstract Color gradientWhiteRight;

  ///
  /// LABLE COLORS
  ///

  abstract Color defaultTextLabelColor;

  ///
  /// LOAN_REPAYMENT_SUMMARY PAGE COLORS -  START
  ///

  abstract Color? loanRepaymentSummaryTextColor;
  abstract Color? loanRepaymentBankSummaryTextColor;

  ///
  /// LOAN_REPAYMENT_SUMMARY PAGE COLORS -  END
  ///

  ///
  /// SEARCH ITEM COLORS -  START
  ///

  abstract Color? searchItemLabelColor;
  abstract Color? searchItemValueColor;
  abstract Color? searchItemIdColor;

  ///
  /// ELEVATION COLORS
  ///
  abstract Color liteBlack;

  ///
  /// DIVIDER COLORS
  ///
  abstract Color defaultDivider;

  ///
  /// TABBAR COLORS
  ///
  abstract Color tabBarDreopSadow;
  abstract Color tabBarDreopSadowLite;
  abstract Color backgroundDarkWhite;

  ///
  ///DROP DOWN LIST COLORS
  ///
  abstract Color dropDownListLabelColor;

  ///
  ///AMOUNT COLORS
  ///
  abstract Color amountColorLightGray;
}
