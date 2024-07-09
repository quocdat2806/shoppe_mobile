import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/common/widgets/appbar/app_bar_widget.dart';
import 'package:shoppe/core/common/widgets/buttons/app_button.dart';
import 'package:shoppe/core/common/widgets/text_field/app_password_text_field.dart';
import 'package:shoppe/core/common/widgets/text_field/app_text_field.dart';

class ForgotPasswordPage extends ConsumerWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    late TextEditingController emailTextController = TextEditingController();
    ObscureTextController();
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Quên mật khẩu',
        centerTitle: true,
        leadingIcon: Icon(
          Icons.navigate_before,
          color: Colors.green ,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                "Please enter your email address. You will receive a link to create a new password via email.",
                style: AppTextStyle.grey,
              ),
              const SizedBox(height: 16),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email", style: AppTextStyle.blackS14),
                    const SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: AppTextField(
                        controller: emailTextController,
                        hintText: "Nhập email của bạn",
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (text) {},
                      ),
                    ),
                    const SizedBox(height: 32),
                    const AppButton(title: 'Gửi', cornerRadius: 12),
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
