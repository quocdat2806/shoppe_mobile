import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/dimens/app_dimens.dart';
import 'package:shoppe/core/common/shadows/app_shadows.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onBackPressed;
  final bool centerTitle;
  final Widget? leadingIcon;
  final List<Widget>? actionIcons;

  const AppBarWidget(
      {super.key,
      required this.title,
      this.showBackButton = true,
      this.onBackPressed,
      this.centerTitle = false,
      this.leadingIcon,
      this.actionIcons});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: AppShadow.appBarShadow,
      ),
      child: AppBar(
        title: Text(
          title,
          style: AppTextStyle.blackS14Medium,
        ),
        centerTitle: centerTitle,
        leading: leadingIcon ?? const SizedBox.shrink(),
        actions: actionIcons,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppDimens.appBarHeight);
}
