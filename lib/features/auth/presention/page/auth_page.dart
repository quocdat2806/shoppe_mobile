import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/widgets/appbar/app_bar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/widgets/text_field/app_text_field.dart';

class AuthPage extends ConsumerStatefulWidget {
  const AuthPage({super.key});

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends ConsumerState<AuthPage> {
  late final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Dang nhap / Dang ky',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppSVGs.icMeal),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppTextField(
                controller: _controller,
                prefixIcon: const Icon(Icons.call),
                hintText: 'So dien thoai',
              ),
            )
          ],
        ),
      ),
    );
  }
}
