import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lastfmmusic/shared/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.focusNode,
    this.autoFocus,
    this.hintText,
    this.initialValue,
    this.minLines,
    this.maxLines = 1,
    this.labelText,
    this.floatingLabelBehavior,
    this.style,
    this.labelStyle,
    this.hintStyle,
    this.onFieldSubmitted,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.isDense,
    this.controller,
    this.inputFormatters,
    this.onChanged,
    this.validator,
    this.readOnly = false,
    this.alignLabelWithHint = true,
    this.showBorder = true,
    this.inputAction = TextInputAction.done,
    this.keyboardType = TextInputType.text,
    this.validationMode,
  }) : super(key: key);

  final FocusNode? focusNode;
  final bool? autoFocus;
  final String? hintText;
  final String? initialValue;
  final int? minLines;
  final int maxLines;
  final String? labelText;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextStyle? hintStyle;
  final Function(String newValue)? onFieldSubmitted;
  final Function()? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isDense;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final TextInputAction inputAction;
  final bool readOnly;
  final bool alignLabelWithHint;
  final bool showBorder;
  final AutovalidateMode? validationMode;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      autofocus: autoFocus ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        floatingLabelBehavior: floatingLabelBehavior,
        alignLabelWithHint: alignLabelWithHint,
        fillColor: readOnly ? Colors.transparent : Colors.white,
        filled: true,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: const EdgeInsetsDirectional.only(end: 0.0),
                child: suffixIcon,
              )
            : null,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsetsDirectional.only(start: 0.0),
                child: prefixIcon,
              )
            : null,
        isDense: suffixIcon != null || prefixIcon != null || isDense != null,
        border: !showBorder
            ? const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              )
            : const OutlineInputBorder(
                borderSide: BorderSide(
                  color: kcAppBackgroundColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
        enabledBorder: !showBorder
            ? const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              )
            : const OutlineInputBorder(
                borderSide: BorderSide(
                  color: kcAppBackgroundColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
        focusedBorder: !showBorder
            ? const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              )
            : OutlineInputBorder(
                borderSide: BorderSide(
                  color: kcGreenHintTextColor,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyle(
              color: kcGreenHintTextColor,
            ),
        contentPadding: readOnly
            ? const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0)
            : const EdgeInsets.all(8.0),
      ),
      key: key,
      style: style ??
          const TextStyle(
            fontWeight: FontWeight.w500,
            color: kcPrimaryGreenTextColor,
          ),
      textInputAction: inputAction,
      focusNode: focusNode,
      onChanged: onChanged,
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      readOnly: readOnly,
      initialValue: initialValue,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      autovalidateMode: validationMode ?? AutovalidateMode.disabled,
      validator: validator,
    );
  }
}
