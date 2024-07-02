import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/widgets/appbar/app_bar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/widgets/buttons/app_button.dart';
import 'package:shoppe/core/common/widgets/text_field/app_text_field.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoppe/core/enums/login.dart';
import 'package:shoppe/features/auth/presention/notifier/auth_page_notifier_provider.dart';
class AuthPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
   final authPageNotifierProvider = ref.watch(authPageStateNotifierProvider);
   final authPageNotifier = ref.watch(authPageStateNotifierProvider.notifier);
   late final TextEditingController _controller = TextEditingController();
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SvgPicture.asset(AppSVGs.icMeal),
              AppTextField(
                controller: _controller,
                prefixIcon: const Icon(Icons.call),
                hintText: 'So dien thoai',
              ),
              const AppButton(
                title: 'Tiep tuc',
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(onTap: ()=>{
                  authPageNotifier.switchMethodLogin(Login.email)
                },child: Text("Dang nhap voi mat khau",)),

              ),
              Text("hoac"),
              const AppButton(
                onPressed: signInWithGoogle,
                title: 'Tiep tuc voi shoppe',
              ),
              const AppButton(
                title: 'Tiep tuc voi google',
              ),
              const AppButton(
                title: 'Tiep tuc voi facebook',
              ),
              // const AppButton(
              //   title: 'Tiep tuc voi shoppe',
              // ),
              // const AppButton(
              //   title: 'Tiep tuc',
              // ),
            ],
          ),
        ),
      ),
    );
  }

}

// class AuthPageState extends ConsumerState<AuthPage> {
//   late final TextEditingController _controller = TextEditingController();
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const AppBarWidget(
//         title: 'Dang nhap / Dang ky',
//         leadingIcon: Icon(
//           Icons.navigate_before,
//           color: Colors.red,
//         ),
//         actionIcons: [
//           Icon(Icons.question_mark),
//           SizedBox(width: 8),
//         ],
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             children: [
//               SvgPicture.asset(AppSVGs.icMeal),
//               AppTextField(
//                 controller: _controller,
//                 prefixIcon: const Icon(Icons.call),
//                 hintText: 'So dien thoai',
//               ),
//               const AppButton(
//                 title: 'Tiep tuc',
//               ),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: InkWell(onTap: ()=>{
//
//                 },child: Text("Dang nhap voi mat khau",)),
//
//               ),
//               Text("hoac"),
//               const AppButton(
//                 onPressed: signInWithGoogle,
//                 title: 'Tiep tuc voi shoppe',
//               ),
//               const AppButton(
//                 title: 'Tiep tuc voi google',
//               ),
//               const AppButton(
//                 title: 'Tiep tuc voi facebook',
//               ),
//               // const AppButton(
//               //   title: 'Tiep tuc voi shoppe',
//               // ),
//               // const AppButton(
//               //   title: 'Tiep tuc',
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }

  Future<UserCredential> signInWithGoogle() async {
  print("vao");
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

