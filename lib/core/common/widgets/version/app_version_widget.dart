import 'package:flutter/material.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';


class AppVersionWidget extends StatelessWidget {
  const AppVersionWidget({super.key});

  @override
  Widget build(BuildContext context) {
         return Text(
      'Version: 1.0.0',
      style: AppTextStyle.blackS14,
    );
    // return BlocBuilder<ProfileCubit, ProfileState>(
    //   buildWhen: (previous, current) => previous.version != current.version,
    //   builder: (context, state) {
    //     return Text(
    //       'Version: ${state.version}',
    //       style: AppTextStyle.blackS14,
    //     );
    //   },
    // );
  }
}
