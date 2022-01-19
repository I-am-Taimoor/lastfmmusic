import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lastfmmusic/ui/dumb_widgets/custom_text_form_field.dart';
// import 'package:rmt_mobile_app/shared/styles.dart';
// import 'package:rmt_mobile_app/shared/app_colors.dart';
// import 'package:rmt_mobile_app/ui/dumb_widgets/custom_text_form_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.focusNode,
    this.autoFocus,
    this.hintText,
    this.initialValue,
    this.minLines,
    this.maxLines = 1,
    this.labelText,
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
    this.borderColor,
    this.inputAction = TextInputAction.done,
    this.keyboardType = TextInputType.text,
    this.validationMode,
    this.borderRadius,
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
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final AutovalidateMode? validationMode;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1.5,
          color: showBorder
              ? (borderColor ?? Colors.greenAccent)
              : Colors.transparent,
        ),
        borderRadius: borderRadius ?? BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 0.0),
        child: CustomTextFormField(
          focusNode: focusNode,
          autoFocus: autoFocus,
          hintText: hintText,
          initialValue: initialValue,
          minLines: minLines,
          maxLines: maxLines,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          style: style,
          labelStyle: labelStyle ??
              const TextStyle(
                color: Colors.greenAccent,
              ),
          hintStyle: hintStyle,
          onFieldSubmitted: onFieldSubmitted,
          onTap: onTap,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          isDense: isDense,
          controller: controller,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          inputAction: inputAction,
          readOnly: readOnly,
          alignLabelWithHint: alignLabelWithHint,
          showBorder: false,
          validationMode: validationMode,
          onChanged: onChanged,
          validator: validator,
        ),
      ),
    );
  }
}
