import 'package:flutter/material.dart';

class Backup extends StatelessWidget {
  const Backup({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("hihi");
    // final authPageNotifierProvider = ref.watch(authPageStateNotifierProvider);
    // final authPageNotifier = ref.watch(authPageStateNotifierProvider.notifier);
    // final _formKey = GlobalKey<FormState>();
    // late TextEditingController emailTextController = TextEditingController();
    // late TextEditingController passwordTextController = TextEditingController();
    // late ObscureTextController obscurePasswordController =
    // ObscureTextController();
    // return Scaffold(
    //   appBar: const AppBarWidget(
    //     title: 'Dang nhap / Dang ky',
    //     leadingIcon: Icon(
    //       Icons.navigate_before,
    //       color: Colors.red,
    //     ),
    //     actionIcons: [
    //       Icon(Icons.question_mark),
    //       SizedBox(width: 8),
    //     ],
    //   ),
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 16),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const SizedBox(height: 16),
    //           Text(
    //             "Sign In",
    //             style: AppTextStyle.blackS20Bold,
    //           ),
    //           const SizedBox(height: 16),
    //           Form(
    //             key: _formKey,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   "Số điện thoại",
    //                   style: AppTextStyle.blackS14,
    //                 ),
    //                 const SizedBox(height: 16),
    //                 Container(
    //                   decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(12.0),
    //                       border: Border.all(color: Colors.grey, width: 1)),
    //                   child: AppTextField(
    //                     controller: emailTextController,
    //                     hintText: "Đăng nhập bằng số điện thoại",
    //                     keyboardType: TextInputType.emailAddress,
    //                     onChanged: (text) {},
    //                     validator: (value) {},
    //                   ),
    //                 ),
    //                 const SizedBox(height: 32),
    //                 const AppButton(
    //                   title: 'Tiep tuc',
    //                   cornerRadius: 12,
    //                 ),
    //                 const SizedBox(height: 12),
    //                 Align(
    //                   alignment: Alignment.centerRight,
    //                   child: Text(
    //                     "Đăng nhập bằng Mật khẩu",
    //                     style: AppTextStyle.blackS14,
    //                   ),
    //                 ),
    //                 Row(
    //                   children: [],
    //                 ),
    //                 const SizedBox(height: 18),
    //                 AppButton(
    //                   title: 'Tiếp tục với Shoppe',
    //                   cornerRadius: 12,
    //                   backgroundColor: Colors.transparent,
    //                   textStyle: AppTextStyle.black,
    //                   borderColor: Colors.black,
    //                   leadingIcon: SvgPicture.asset(AppSVGs.icTwitter),
    //                 ),
    //                 const SizedBox(height: 12),
    //                 AppButton(
    //                   title: 'Tiếp tục với Google',
    //                   cornerRadius: 12,
    //                   backgroundColor: Colors.transparent,
    //                   textStyle: AppTextStyle.black,
    //                   borderColor: Colors.black,
    //                   leadingIcon: SvgPicture.asset(AppSVGs.icGoogle),
    //                 ),
    //                 const SizedBox(height: 12),
    //                 AppButton(
    //                   title: 'Tiếp tục với Facebook',
    //                   cornerRadius: 12,
    //                   backgroundColor: Colors.transparent,
    //                   textStyle: AppTextStyle.black,
    //                   borderColor: Colors.black,
    //                   leadingIcon: SvgPicture.asset(AppSVGs.icFb),
    //
    //                 ),
    //                 // const Text("Mật khẩu"),
    //                 // const SizedBox(height: 12),
    //                 // Container(
    //                 //   decoration: BoxDecoration(
    //                 //       borderRadius: BorderRadius.circular(24.0),
    //                 //       border: Border.all(
    //                 //           color: Colors.grey,
    //                 //           width: 1
    //                 //       )
    //                 //   ),
    //                 //   child: AppTextField(
    //                 //     controller: emailTextController,
    //                 //     hintText: "Mật khẩu của bạn",
    //                 //     keyboardType: TextInputType.emailAddress,
    //                 //     onChanged: (text) {},
    //                 //     validator: (value) {},
    //                 //   ),
    //                 // ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
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

