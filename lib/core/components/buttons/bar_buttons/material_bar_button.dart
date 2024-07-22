import 'package:flutter/material.dart';
import 'package:iclick_books_manager/injection_container.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/theme_config.dart';
import 'package:iclick_books_manager/theme/theme_variation_type.dart';

import 'button_type.dart';

class MaterialBarButton extends StatelessWidget {
  MaterialBarButton({
    Key? key,
    this.onTap,
    this.title,
    this.themeVariationType = ThemeVariationType.success,
    this.secondaryThemeVariationType = ThemeVariationType.success,
    this.style,
    this.height,
    this.bgColor,
    this.textColor,
    this.buttonType,
    this.addBackground,
    this.buttonBorderWidth,
    this.fontsize,
    this.shape,
  }) : super(key: key);

  final Function? onTap;
  final String? title;
  final ThemeVariationType themeVariationType;
  final ThemeVariationType secondaryThemeVariationType;
  final ButtonStyle? style;
  final double? height;
  final Color? bgColor;
  final Color? textColor;
  final ButtonType? buttonType;
  final bool? addBackground;
  final double? buttonBorderWidth;
  final double? fontsize;
  final RoundedRectangleBorder? shape;

  final tc = di<ThemeConfig>();
  @override
  Widget build(BuildContext context) {
    return addBackground == true
        ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: ElevatedButton(
                  onPressed: () {
                    if (onTap != null) {
                      (onTap!)();
                    }
                  },
                  style: style ??
                      ElevatedButton.styleFrom(
                          shape: shape ??
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    tc.dim.navigationButtonsConerRadius),
                              ),
                          side: BorderSide(
                            width: buttonBorderWidth ??
                                tc.dim.defaultMaterialBarButtonBorderWidth,
                            color: (buttonType == ButtonType.outlined)
                                ? tc.col.themeColorVariation
                                    .getColorByVariation(
                                        themeVariationType: themeVariationType)
                                : tc.col.themeColorVariation
                                    .getColorByVariation(
                                        themeVariationType: themeVariationType),
                          ),
                          minimumSize: Size.fromHeight(
                              height ?? tc.dim.defaultMaterialBarButtonHeight),
                          backgroundColor: (buttonType == ButtonType.outlined)
                              ? tc.col.secondaryThemeColorVariation
                                  .getColorByVariation(
                                      themeVariationType: themeVariationType)
                              : tc.col.themeColorVariation.getColorByVariation(
                                  themeVariationType: themeVariationType),
                          foregroundColor: (buttonType == ButtonType.outlined)
                              ? tc.col.themeColorVariation.getColorByVariation(
                                  themeVariationType: themeVariationType)
                              : tc.col.secondaryThemeColorVariation
                                  .getColorByVariation(
                                      themeVariationType: themeVariationType)),
                  child: Text(
                    title ?? 'Button Text',
                    style: (buttonType == ButtonType.outlined)
                        ? Theme.of(context)
                            .primaryTextTheme
                            .labelLarge
                            ?.copyWith(
                                color: tc
                                    .col.themeColorVariation
                                    .getColorByVariation(
                                        themeVariationType: themeVariationType))
                        : Theme.of(context)
                            .primaryTextTheme
                            .labelLarge
                            ?.copyWith(
                                color: tc
                                    .col.secondaryThemeColorVariation
                                    .getColorByVariation(
                                        themeVariationType:
                                            themeVariationType)),
                  )),
            ),
          )
        : ElevatedButton(
            onPressed: () {
              if (onTap != null) {
                (onTap!)();
              }
            },
            style: style ??
                ElevatedButton.styleFrom(
                    shape: shape ??
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              tc.dim.navigationButtonsConerRadius),
                        ),
                    side: BorderSide(
                      width: buttonBorderWidth ??
                          tc.dim.defaultMaterialBarButtonBorderWidth,
                      color: (buttonType == ButtonType.outlined)
                          ? bgColor ??
                              tc.col.themeColorVariation.getColorByVariation(
                                  themeVariationType: themeVariationType)
                          : bgColor ??
                              tc.col.themeColorVariation.getColorByVariation(
                                  themeVariationType: themeVariationType),
                    ),
                    minimumSize: Size.fromHeight(
                        height ?? tc.dim.defaultMaterialBarButtonHeight),
                    backgroundColor: (buttonType == ButtonType.outlined)
                        ? tc.col.secondaryThemeColorVariation
                            .getColorByVariation(
                                themeVariationType: themeVariationType)
                        : bgColor ??
                            tc.col.themeColorVariation.getColorByVariation(
                                themeVariationType: themeVariationType),
                    foregroundColor: (buttonType == ButtonType.outlined)
                        ? tc.col.themeColorVariation.getColorByVariation(
                            themeVariationType: themeVariationType)
                        : tc.col.secondaryThemeColorVariation
                            .getColorByVariation(
                                themeVariationType: themeVariationType)),
            child: Text(
              title ?? 'Button Text',
              style: (buttonType == ButtonType.outlined)
                  ? Theme.of(context).primaryTextTheme.labelLarge?.copyWith(
                      fontSize: fontsize,
                      color: textColor ??
                          tc.col.themeColorVariation.getColorByVariation(
                            themeVariationType: themeVariationType,
                          ))
                  : Theme.of(context).primaryTextTheme.labelLarge?.copyWith(
                      fontSize: fontsize,
                      color: textColor ??
                          tc.col.secondaryThemeColorVariation
                              .getColorByVariation(
                                  themeVariationType: themeVariationType)),
            ));
  }
}
