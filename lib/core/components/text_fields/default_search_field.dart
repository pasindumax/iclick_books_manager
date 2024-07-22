import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclick_books_manager/store/theme/bloc/theme_bloc.dart';
import 'package:iclick_books_manager/theme/theme_values/base_images.dart';
import 'package:iclick_books_manager/theme/theme_values/base_theme_config.dart';

class DefaultSearchField extends StatelessWidget {
  final String? initialValue;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final AutovalidateMode? autovalidateMode;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? border;
  final InputBorder? enableBorder;
  final String? hintText;
  final EdgeInsets? contentPadding;
  final bool? isDense;
  final String? validationMessage;
  final String? labelText;
  final TextStyle? labelStyle;
  final Function(String?) setValue;
  final DefaultTextFieldLabelPosition? labelPosition;
  final bool? isVisibleSearchButton;
  final Function? onTapSearchButton;
  final String? image;
  final bool? isImage;
  final double? height;
  final TextEditingController? controller;

  DefaultSearchField({
    this.initialValue,
    this.focusNode,
    this.decoration,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.focusedBorder,
    this.errorBorder,
    this.border,
    this.enableBorder,
    this.hintText,
    this.contentPadding,
    this.isDense,
    this.validationMessage,
    this.labelText,
    this.labelStyle,
    required this.setValue,
    this.labelPosition = DefaultTextFieldLabelPosition.top,
    this.isVisibleSearchButton = false,
    this.onTapSearchButton,
    this.isImage = true,
    this.image,
    this.height,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        if (state is ThemeLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topLabel(context),
              _textField(context, state.themeConfig),
            ],
          );
        }
        return Container(); // You can add a loading indicator or an error message here
      },
    );
  }

  Widget _topLabel(BuildContext context) {
    return labelPosition == DefaultTextFieldLabelPosition.top &&
            labelText != null
        ? Text(
            labelText ?? 'Field Label',
            style: Theme.of(context).primaryTextTheme.headlineLarge,
          )
        : Container();
  }

  Widget _textField(BuildContext context, BaseThemeConfig themeConfig) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: height,
        child: TextFormField(
          key: key,
          initialValue: initialValue,
          focusNode: focusNode,
          decoration: decoration ??
              InputDecoration(
                prefixIcon: isImage == true
                    ? Padding(
                        padding:
                            EdgeInsets.only(top: 0), // add pad to adjust icon
                        child: Image(
                          image: AssetImage(image ?? BaseImages.searchIcon),
                        ),
                      )
                    : null,
                suffixIcon: isVisibleSearchButton == true
                    ? IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          if (onTapSearchButton != null) onTapSearchButton!();
                        },
                      )
                    : null,
                labelText: labelPosition == DefaultTextFieldLabelPosition.inline
                    ? (labelText ?? 'Field Label')
                    : '',
                labelStyle: labelStyle ??
                    themeConfig.theme.typography.black.titleSmall?.copyWith(
                        color: themeConfig.col.defaultTextFieldLabelColor),
                focusedBorder: focusedBorder ??
                    OutlineInputBorder(
                        borderSide: BorderSide(
                            color: themeConfig
                                .col.defaultTextFieldFocusedBorderColor,
                            width: 2.0),
                        borderRadius: BorderRadius.circular(5)),
                errorBorder: errorBorder ??
                    OutlineInputBorder(
                        borderSide: BorderSide(
                            color: themeConfig
                                .col.defaultTextFieldErrorBorderColor,
                            width: 2.0),
                        borderRadius: BorderRadius.circular(5)),
                border: border ??
                    OutlineInputBorder(
                      borderSide: BorderSide(
                          color: themeConfig.col.defaultTextFieldBorderColor,
                          width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                enabledBorder: enableBorder ??
                    OutlineInputBorder(
                        borderSide: BorderSide(
                            color: themeConfig.col.defaultTextFieldBorderColor,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5)),
                hintText: hintText,
                isDense: isDense ?? true,
                contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0), // updated
              ),
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction ?? TextInputAction.next,
          style: style ?? TextStyle(fontSize: 16, color: Color(0xffBDBDBD)),
          strutStyle: strutStyle,
          textDirection: textDirection,
          textAlign: textAlign,
          textAlignVertical: textAlignVertical,
          autofocus: autofocus,
          readOnly: readOnly,
          toolbarOptions: toolbarOptions,
          showCursor: showCursor,
          obscuringCharacter: obscuringCharacter,
          obscureText: obscureText,
          autocorrect: autocorrect,
          smartDashesType: smartDashesType,
          smartQuotesType: smartQuotesType,
          enableSuggestions: enableSuggestions,
          maxLines: maxLines,
          minLines: minLines,
          expands: expands,
          maxLength: maxLength,
          onChanged: (value) => setValue(value),
          onTap: onTap,
          onEditingComplete:
              onEditingComplete ?? () => FocusScope.of(context).nextFocus(),
          onFieldSubmitted: onFieldSubmitted,
          onSaved: onSaved,
          validator: (value) =>
              validationMessage?.isNotEmpty == true ? validationMessage : null,
          inputFormatters: inputFormatters,
          enabled: enabled,
          cursorWidth: cursorWidth,
          cursorHeight: cursorHeight,
          cursorRadius: cursorRadius,
          cursorColor: cursorColor,
          keyboardAppearance: keyboardAppearance,
          scrollPadding: scrollPadding,
          enableInteractiveSelection: enableInteractiveSelection,
          selectionControls: selectionControls,
          buildCounter: buildCounter,
          scrollPhysics: scrollPhysics,
          autofillHints: autofillHints,
          autovalidateMode: autovalidateMode,
          controller: controller,
        ),
      ),
    );
  }
}

enum DefaultTextFieldLabelPosition { top, inline, none }
