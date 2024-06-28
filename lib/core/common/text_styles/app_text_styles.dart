import 'package:flutter/material.dart';
import 'package:shoppe/core/configs/app_configs.dart';

import '../color/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  ///Black
  static const black = TextStyle(
    color: AppColors.textBlack,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );

  //s12
  static final blackS12 = black.copyWith(fontSize: 12);
  static final blackS12Medium = blackS12.copyWith(fontWeight: FontWeight.w500);
  static final blackS12Bold = blackS12.copyWith(fontWeight: FontWeight.bold);
  static final blackS12W800 = blackS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final blackS14 = black.copyWith(fontSize: 14);
  static final blackS14Medium = blackS14.copyWith(fontWeight: FontWeight.w500);
  static final blackS14Bold = blackS14.copyWith(fontWeight: FontWeight.bold);
  static final blackS14W700 = blackS14.copyWith(fontWeight: FontWeight.w700);
  static final blackS14W800 = blackS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final blackS16 = black.copyWith(fontSize: 16);
  static final blackS16Bold = blackS16.copyWith(fontWeight: FontWeight.bold);
  static final blackS16W600 = blackS16.copyWith(fontWeight: FontWeight.w600);
  static final blackS16W700 = blackS16.copyWith(fontWeight: FontWeight.w700);
  static final blackS16W800 = blackS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final blackS18 = black.copyWith(fontSize: 18);
  static final blackS18Bold = blackS18.copyWith(fontWeight: FontWeight.bold);
  static final blackS18W700 = blackS18.copyWith(fontWeight: FontWeight.w700);
  static final blackS18W800 = blackS18.copyWith(fontWeight: FontWeight.w800);

  //s20
  static final blackS20 = black.copyWith(fontSize: 20);
  static final blackS20Bold = blackS20.copyWith(fontWeight: FontWeight.bold);
  static final blackS20W700 = blackS20.copyWith(fontWeight: FontWeight.w700);
  static final blackS20W800 = blackS20.copyWith(fontWeight: FontWeight.w800);

  ///Black1
  static const black1 = TextStyle(
    color: AppColors.black1,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );
  //s20
  static final black1S20 = black1.copyWith(fontSize: 20);
  static final black1S20Bold = black1S20.copyWith(fontWeight: FontWeight.bold);
  static final black1S20W700 = black1S20.copyWith(fontWeight: FontWeight.w700);
  static final black1S20W800 = black1S20.copyWith(fontWeight: FontWeight.w800);

  static const black2 = TextStyle(
    color: AppColors.black2,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );

  //s16
  static final black2S16 = black2.copyWith(fontSize: 16);
  static final black2S16Bold = black2S16.copyWith(fontWeight: FontWeight.bold);
  static final black2S16W700 = black2S16.copyWith(fontWeight: FontWeight.w700);
  static final black2S16W800 = black2S16.copyWith(fontWeight: FontWeight.w800);

  ///Grey
  static const grey = TextStyle(
    color: AppColors.grey,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );

  //s16
  static final greyS12 = grey.copyWith(fontSize: 12);
  static final greyS12Bold = greyS12.copyWith(fontWeight: FontWeight.bold);
  static final greyS12W700 = greyS12.copyWith(fontWeight: FontWeight.w700);
  static final greyS12W800 = greyS12.copyWith(fontWeight: FontWeight.w800);


  static const grey3 = TextStyle(
    color: AppColors.grey3,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );

  //s12
  static final grey3S12 = grey3.copyWith(fontSize: 12);
  static final grey3S12Bold = grey3S12.copyWith(fontWeight: FontWeight.bold);
  static final grey3S12W700 = grey3S12.copyWith(fontWeight: FontWeight.w700);
  static final grey3S12W800 = grey3S12.copyWith(fontWeight: FontWeight.w800);



  ///Blue
  static const blue = TextStyle(
    color: AppColors.secondary,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );

  //s12
  static final blueS12 = blue.copyWith(fontSize: 12);
  static final blueS12Medium = blueS12.copyWith(fontWeight: FontWeight.w500);
  static final blueS12Bold = blueS12.copyWith(fontWeight: FontWeight.bold);
  static final blueS12W800 = blueS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final blueS14 = blue.copyWith(fontSize: 14);
  static final blueS14Medium = blueS14.copyWith(fontWeight: FontWeight.w500);
  static final blueS14Bold = blueS14.copyWith(fontWeight: FontWeight.bold);
  static final blueS14W800 = blueS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final blueS16 = blue.copyWith(fontSize: 16);
  static final blueS16Bold = blueS16.copyWith(fontWeight: FontWeight.bold);
  static final blueS16W600 = blueS16.copyWith(fontWeight: FontWeight.w600);
  static final blueS16W800 = blueS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final blueS18 = blue.copyWith(fontSize: 18);
  static final blueS18Bold = blueS18.copyWith(fontWeight: FontWeight.bold);
  static final blueS18W700 = blueS18.copyWith(fontWeight: FontWeight.w700);
  static final blueS18W800 = blueS18.copyWith(fontWeight: FontWeight.w800);

  ///White
  static const white = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );


  //s10
  static final whiteS10 = white.copyWith(fontSize: 10);
  static final whiteS10Bold = whiteS10.copyWith(fontWeight: FontWeight.bold);
  static final whiteS10W800 = whiteS10.copyWith(fontWeight: FontWeight.w800);
  static final whiteS10W700 = whiteS10.copyWith(fontWeight: FontWeight.w700);


  //s12
  static final whiteS12 = white.copyWith(fontSize: 12);
  static final whiteS12Bold = whiteS12.copyWith(fontWeight: FontWeight.bold);
  static final whiteS12W800 = whiteS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final whiteS14 = white.copyWith(fontSize: 14);
  static final whiteS14Bold = whiteS14.copyWith(fontWeight: FontWeight.bold);
  static final whiteS14W800 = whiteS14.copyWith(fontWeight: FontWeight.w800);
  static final whiteS14W700 = whiteS14.copyWith(fontWeight: FontWeight.w700);

  //s16
  static final whiteS16 = white.copyWith(fontSize: 16);
  static final whiteS16Bold = whiteS16.copyWith(fontWeight: FontWeight.bold);
  static final whiteS16W800 = whiteS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final whiteS18 = white.copyWith(fontSize: 18);
  static final whiteS18Bold = whiteS18.copyWith(fontWeight: FontWeight.bold);
  static final whiteS18W800 = whiteS18.copyWith(fontWeight: FontWeight.w800);

  ///Gray
  static const gray = TextStyle(
    color: AppColors.textGray,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );

  //s10
  static final grayS10 = gray.copyWith(fontSize: 10);
  static final grayS10Medium = grayS10.copyWith(fontWeight: FontWeight.w500);
  static final grayS10Bold = grayS10.copyWith(fontWeight: FontWeight.bold);
  static final grayS10W800 = grayS10.copyWith(fontWeight: FontWeight.w800);

  //s12
  static final grayS12 = gray.copyWith(fontSize: 12);
  static final grayS12Medium = grayS12.copyWith(fontWeight: FontWeight.w500);
  static final grayS12Bold = grayS12.copyWith(fontWeight: FontWeight.bold);
  static final grayS12W800 = grayS12.copyWith(fontWeight: FontWeight.w800);
  static final grayS12W700 = grayS12.copyWith(fontWeight: FontWeight.w700);

  //s14
  static final grayS14 = gray.copyWith(fontSize: 14);
  static final grayS14Medium = grayS14.copyWith(fontWeight: FontWeight.w500);
  static final grayS14Bold = grayS14.copyWith(fontWeight: FontWeight.bold);
  static final grayS14W800 = grayS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final grayS16 = gray.copyWith(fontSize: 16);
  static final grayS16Bold = grayS16.copyWith(fontWeight: FontWeight.bold);
  static final grayS16W800 = grayS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final grayS18 = gray.copyWith(fontSize: 18);
  static final grayS18Bold = grayS18.copyWith(fontWeight: FontWeight.bold);
  static final grayS18W800 = grayS18.copyWith(fontWeight: FontWeight.w800);

  ///Yellow
  static const yellowBold = TextStyle(
    color: AppColors.yellowBold,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );
  //s10
  static final yellowBoldS10 = yellowBold.copyWith(fontSize: 10);
  static final yellowBoldS10Bold= yellowBoldS10.copyWith(fontWeight: FontWeight.bold);
  static final yellowBoldS10W700 = yellowBoldS10.copyWith(fontWeight: FontWeight.w700);
  //s12
  static final yellowBoldS12 = yellowBold.copyWith(fontSize: 14);
  static final yellowBoldS12Bold= yellowBoldS12.copyWith(fontWeight: FontWeight.bold);
  static final yellowBoldS12W700 = yellowBoldS12.copyWith(fontWeight: FontWeight.w700);

//yellowThin
  static const yellowThin1 = TextStyle(
    color: AppColors.yellowThin1,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfigs.fontFamily,
  );
  //s12
  static final yellowThinS12 = yellowThin1.copyWith(fontSize: 12);
  static final yellowThinS12Bold= yellowThinS12.copyWith(fontWeight: FontWeight.bold);
  static final yellowThinS12W700 = yellowThinS12.copyWith(fontWeight: FontWeight.w700);


}
