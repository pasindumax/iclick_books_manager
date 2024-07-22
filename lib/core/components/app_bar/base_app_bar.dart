import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclick_books_manager/store/theme/bloc/theme_bloc.dart';
import 'package:iclick_books_manager/theme/theme_values/base_theme_config.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actionWidgets;
  final List<IconData?>? actionIconData;
  final Function? onTapCallback;
  final double? elevation;
  final Widget? flexibleSpace;
  final Color? bgColor;
  final PreferredSizeWidget? bottom;
  final TextStyle? textStyle;

  BaseAppBar({
    this.title,
    this.actionWidgets,
    this.onTapCallback,
    this.actionIconData,
    this.elevation,
    this.flexibleSpace,
    this.bgColor,
    this.bottom,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        if (state is ThemeLoaded) {
          return AppBar(
            bottom: bottom,
            flexibleSpace: flexibleSpace,
            elevation: elevation,
            title: titleWidget(context, state.themeConfig),
            backgroundColor:
                bgColor ?? state.themeConfig.col.themeColorVariation.success,
            titleSpacing: 0,
            leading: leadingWidget(context),
            actions: buildActions(),
            systemOverlayStyle: SystemUiOverlayStyle.light,
          );
        }
        return Container(); // You can add a loading indicator or an error message here
      },
    );
  }

  Widget titleWidget(BuildContext context, BaseThemeConfig themeConfig) {
    return Text(
      title ?? '',
      style: textStyle ??
          Theme.of(context).primaryTextTheme.displaySmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
    );
  }

  Widget leadingWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context, true);
      },
      child: Image(
        image: AssetImage(
            'assets/images/back_button.png'), // Update the asset path as needed
      ),
    );
  }

  List<Widget> buildActions() {
    if (actionWidgets != null || actionIconData != null) {
      return actionWidgets ??
          [
            for (int i = 0; i < actionIconData!.length; i++)
              InkWell(
                onTap: () {
                  if (onTapCallback != null) {
                    onTapCallback!(i);
                  }
                },
                child: GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12, left: i == 0 ? 12 : 0),
                    child: Icon(actionIconData![i]),
                  ),
                ),
              )
          ];
    }
    return [];
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
