import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final String? hintText;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Color? focusedColor;
  final EdgeInsets? padding;
  final TextStyle? errorStyle;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const AppTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.hintText,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.style,
    this.focusedColor,
    this.padding,
    this.errorStyle,
    this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //
      // ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          prefixIcon ?? const SizedBox.shrink(),
          const SizedBox(width: 8),
          Expanded(
            child: TextFormField(
              controller: controller,
              style: style ?? AppTextStyle.blackS14,
              decoration: InputDecoration(
                hintText: hintText,
                // border: InputBorder(borderSide: BorderSide.),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                hintStyle: hintStyle ?? AppTextStyle.grayS14,
              ),
            ),
          ),
          const SizedBox(width: 8),
          suffixIcon??const SizedBox.shrink()
        ],
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 12),
    //   child: TextFormField(
    //     controller: controller,
    //     focusNode: focusNode,
    //     style: style ?? AppTextStyle.blackS14,
    //     decoration: InputDecoration(
    //       hintText: hintText,
    //       focusedBorder: InputBorder.none,
    //       enabledBorder: InputBorder.none,
    //       hintStyle: hintStyle ?? AppTextStyle.grayS14,
    //       prefixIcon: prefixIcon,
    //       suffixIcon: suffixIcon??const SizedBox.shrink(),
    //     ),
    //     keyboardType: keyboardType,
    //     onFieldSubmitted: onFieldSubmitted,
    //     validator: validator,
    //   ),
    // );
  }
}
