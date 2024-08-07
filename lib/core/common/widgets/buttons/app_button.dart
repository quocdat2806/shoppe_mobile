import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/dimens/app_dimens.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/common/widgets/loading/app_loading_indicator.dart';

class AppButton extends StatelessWidget {
  //Attributes
  final String title;
  final double width;
  final double height;
  final double borderWidth;
  final double cornerRadius;
  final Color? borderColor;
  final Color backgroundColor;
  final Color disableBackgroundColor;
  final TextStyle textStyle;
  final double? containerPadding;

  //Child widgets
  final Widget? leadingIcon;
  final Widget? trailingIcon;

  //Status
  final bool isLoading;

  //Action & callback
  final VoidCallback? onPressed;

  final EdgeInsets? padding;

  final List<BoxShadow>? boxShadow;

  final bool isEnabled;

  const AppButton({
    super.key,
    this.title = "",
    this.width = double.infinity,
    this.height = AppDimens.buttonHeight,
    this.borderWidth = 0,
    this.cornerRadius = AppDimens.buttonCornerRadius,
    this.borderColor,
    this.backgroundColor = AppColors.buttonBGPrimary,
    this.disableBackgroundColor = AppColors.buttonBGDisabled,
    this.textStyle = AppTextStyle.white,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.onPressed,
    this.padding,
    this.boxShadow,
    this.isEnabled = true,
    this.containerPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(containerPadding??0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cornerRadius),
          border: borderColor != null
              ? Border.all(
                  color: borderColor!,
                  width: borderWidth,
                )
              : null,
          boxShadow: boxShadow,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            cornerRadius,
          ),
          child: Material(
            color: isEnabled ? backgroundColor : AppColors.gray1,
            borderRadius: BorderRadius.circular(
              cornerRadius,
            ),
            child: InkWell(
              onTap: isEnabled ? onPressed : null,
              child: Padding(
                padding: padding ?? EdgeInsets.zero,
                child: _buildChildWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChildWidget() {
    if (isLoading) {
      return const AppCircularProgressIndicator();
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leadingIcon !=null? const SizedBox(width: 12):const SizedBox.shrink(),
          leadingIcon ?? Container(),
          Expanded(
            child: Center(
              child: title.isNotEmpty
                  ? Text(
                      title,
                      style: textStyle,
                    )
                  : Container(),
            ),
          ),
          trailingIcon ?? Container(),
        ],
      );
    }
  }
}
