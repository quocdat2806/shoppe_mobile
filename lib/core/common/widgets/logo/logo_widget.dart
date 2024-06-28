import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';

class LogoWidget extends StatelessWidget {
  final double? width;
  final double? height;

  const LogoWidget({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: SvgPicture.asset(
        AppSVGs.icProfile,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
