import "package:codink_coop/services/get_theme.dart";
import "package:codink_coop/utils/themes.dart";
import "package:codink_coop/widgets/space.dart";
import "package:codink_coop/widgets/text.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class CustomTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final bool? obsecureText;
  final bool? enable;
  final String hintText;
  final String? label;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? outterPadding;
  final Iterable<String>? autofillHints;
  final int? maxLines;
  final int? maxLength;
  final double? width;
  final double? height;
  final Widget? prefix;
  final Widget? suffix;
  final Color? hintShade;
  final TextCapitalization? textCapitalization;
  final void Function()? onEditingComplete;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;

  const CustomTextInput({
    super.key, 
    required this.controller, 
    required this.validator, 
    required this.textInputType, 
    required this.hintText, 
    this.obsecureText,
    this.enable,
    this.contentPadding,
    this.autofillHints, 
    this.maxLines,
    this.maxLength,
    this.width,
    this.height,
    this.suffix,
    this.prefix,
    this.label,
    this.textCapitalization,
    this.outterPadding,
    this.hintShade,
    this.onEditingComplete,
    this.focusNode, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: outterPadding ?? EdgeInsets.symmetric(
        vertical: verticalSpace(context, (height ?? 0))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: controller,
            validator: validator,
            keyboardType: textInputType,
            maxLines: maxLines,
            enabled: enable,
            focusNode: focusNode,
            onEditingComplete: onEditingComplete,
            textCapitalization: textCapitalization ?? TextCapitalization.sentences,
            obscureText: obsecureText ?? false,
            autofillHints: autofillHints,
            onChanged: onChanged,
            inputFormatters: [
              LengthLimitingTextInputFormatter(maxLength)
            ],
            style: TextStyle(
              color: isLightTheme(context) ? KColors.black : KColors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: prefix,
              fillColor: isLightTheme(context) ? Colors.grey.shade100 : KColors.darkerGrey,
              filled: true,
              contentPadding: contentPadding ?? const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              hintText: hintText,
              label: CustomText(
                text: hintText, 
                fontSize: 12, 
                textColor: isLightTheme(context) ? Colors.black.withOpacity(.8) : KColors.white.withOpacity(.8),
                fontWeight: FontWeight.normal,
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              suffix: suffix,
            ),
          ),
        ],
      ),
    );
  }
}