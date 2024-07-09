import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/common/widgets/appbar/app_bar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/widgets/buttons/app_button.dart';
import 'package:shoppe/core/common/widgets/text_field/app_password_text_field.dart';
import 'package:shoppe/core/common/widgets/text_field/app_text_field.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoppe/features/authentication/auth/presention/notifier/auth_page_notifier_provider.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authPageNotifierProvider = ref.watch(authPageStateNotifierProvider);
    final authPageNotifier = ref.watch(authPageStateNotifierProvider.notifier);
    final formKey = GlobalKey<FormState>();
    late TextEditingController emailTextController = TextEditingController();
    ObscureTextController();
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Đăng nhập / Đăng ký',
        leadingIcon: Icon(
          Icons.navigate_before,
          color: Colors.red,
        ),
        actionIcons: [
          Icon(Icons.question_mark),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text("Đăng nhập", style: AppTextStyle.blackS20Bold),
              const SizedBox(height: 16),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Số điện thoại", style: AppTextStyle.blackS14),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: AppTextField(
                        controller: emailTextController,
                        hintText: "Đăng nhập bằng số điện thoại",
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (text) {},
                      ),
                    ),
                    const SizedBox(height: 32),
                    const AppButton(title: 'Tiếp tục', cornerRadius: 12),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Đăng nhập bằng Mật khẩu",
                        style: AppTextStyle.blackS14,
                      ),
                    ),
                    const SizedBox(height: 18),
                    AppButton(
                      title: 'Tiếp tục với Shoppe',
                      cornerRadius: 12,
                      backgroundColor: Colors.transparent,
                      textStyle: AppTextStyle.black,
                      borderColor: Colors.black,
                      borderWidth: 1,
                      leadingIcon: SvgPicture.asset(AppSVGs.icTwitter),
                    ),
                    const SizedBox(height: 12),
                    AppButton(
                      title: 'Tiếp tục với Google',
                      cornerRadius: 12,
                      backgroundColor: Colors.transparent,
                      textStyle: AppTextStyle.black,
                      borderColor: Colors.black,
                      borderWidth: 1,
                      leadingIcon: SvgPicture.asset(AppSVGs.icGoogle),
                      onPressed: authPageNotifier.signInWithGoogle,
                    ),
                    const SizedBox(height: 12),
                    AppButton(
                      title: 'Tiếp tục với Facebook',
                      cornerRadius: 12,
                      backgroundColor: Colors.transparent,
                      textStyle: AppTextStyle.black,
                      borderColor: Colors.black,
                      borderWidth: 1,
                      leadingIcon: SvgPicture.asset(AppSVGs.icFb),
                    ),
                    // const SizedBox(height: 12),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(24.0),
                    //       border: Border.all(
                    //           color: Colors.grey,
                    //           width: 1
                    //       )
                    //   ),
                    //   child: AppTextField(
                    //     controller: emailTextController,
                    //     hintText: "Mật khẩu của bạn",
                    //     keyboardType: TextInputType.emailAddress,
                    //     onChanged: (text) {},
                    //     validator: (value) {},
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Bằng cách đăng nhập hoặc đăng kí,bạn đồng ý với',
                      style: AppTextStyle.black,
                    ),
                    TextSpan(
                      text: ' Chính sách của Foody!',
                      style: AppTextStyle.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
