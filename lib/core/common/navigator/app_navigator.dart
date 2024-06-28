import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class AppNavigator {
  BuildContext context;

  AppNavigator({required this.context});

  void pop<T extends Object?>([T? result]) {
    GoRouter.of(context).pop(result);
  }

  void popUntilNamed(String name) {
    Navigator.popUntil(context, ModalRoute.withName(name));
  }

  Future<dynamic> pushNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) async {
    return GoRouter.of(context).pushNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  Future<dynamic> pushReplacementNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) async {
    return GoRouter.of(context).pushReplacementNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }
  //
  // void showLoadingOverlay() {
  //   context.loaderOverlay.show();
  // }
  //
  // void hideLoadingOverlay() {
  //   context.loaderOverlay.hide();
  // }
  //
  // Future<void> openSignIn() {
  //   while (GoRouter.of(context).canPop()) {
  //     GoRouter.of(context).pop();
  //   }
  //   return GoRouter.of(context).pushNamed(AppRouter.signIn);
  // }
  //
  // Future<void> openHomePage() {
  //   while (GoRouter.of(context).canPop()) {
  //     GoRouter.of(context).pop();
  //   }
  //   return GoRouter.of(context).pushNamed(AppRouter.home);
  // }
  //
  // void openPhotoView({required List<String> photoUrls}) {
  //   GoRouter.of(context).push(AppRouter.photoView, extra: photoUrls);
  // }
  //
  // void showDialogLogIn({
  //   VoidCallback? handleTapButtonOk,
  //   String contentDialog = '',
  // }) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.all(
  //             Radius.circular(14),
  //           ),
  //         ),
  //         contentPadding: const EdgeInsets.only(
  //           top: 40,
  //           bottom: 32,
  //           left: 16,
  //           right: 16,
  //         ),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: <Widget>[
  //             Text(
  //               '通知',
  //               style: AppTextStyle.blackS20W700,
  //             ),
  //             const SizedBox(height: 24),
  //             Text(contentDialog),
  //             AppButton(
  //               title: 'OK',
  //               backgroundColor: AppColors.black,
  //               cornerRadius: 24,
  //               onPressed: () {
  //                 handleTapButtonOk?.call();
  //               },
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // /// Show dialog
  // Future<void> showSimpleDialog({
  //   String message = "",
  //   String? textConfirm = "OK",
  //   String? textCancel,
  //   barrierDismissible = false,
  //   VoidCallback? onConfirm,
  //   VoidCallback? onCancel,
  // }) {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: barrierDismissible,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
  //         insetPadding: const EdgeInsets.all(0),
  //         contentPadding: EdgeInsets.zero,
  //         content: Container(
  //           width: MediaQuery.sizeOf(context).width - 32,
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(4.0),
  //           ),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.stretch,
  //             children: <Widget>[
  //               Padding(
  //                 padding: const EdgeInsets.only(
  //                     left: 20, top: 20, right: 20, bottom: 30),
  //                 child: Text(message, style: AppTextStyle.blackS14),
  //               ),
  //               Container(
  //                 height: 44,
  //                 decoration: const BoxDecoration(
  //                   color: AppColors.gray2,
  //                   borderRadius: BorderRadius.only(
  //                     bottomLeft: Radius.circular(4),
  //                     bottomRight: Radius.circular(4),
  //                   ),
  //                 ),
  //                 child: Row(
  //                   children: [
  //                     if (textConfirm != null)
  //                       Expanded(
  //                         child: TextButton(
  //                           onPressed: () {
  //                             Navigator.of(context).pop();
  //                             onConfirm?.call();
  //                           },
  //                           style: TextButton.styleFrom(
  //                             side: BorderSide.none,
  //                             padding: EdgeInsets.zero,
  //                             elevation: 0,
  //                             shape: const RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.all(Radius.zero),
  //                             ),
  //                           ),
  //                           child: Text(
  //                             textConfirm,
  //                             style: AppTextStyle.blueS14Bold,
  //                           ),
  //                         ),
  //                       ),
  //                     if (textCancel != null)
  //                       Expanded(
  //                         child: TextButton(
  //                           onPressed: () {
  //                             Navigator.of(context).pop();
  //                             onCancel?.call();
  //                           },
  //                           style: TextButton.styleFrom(
  //                             side: BorderSide.none,
  //                             padding: EdgeInsets.zero,
  //                             elevation: 0,
  //                             shape: const RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.all(Radius.zero),
  //                             ),
  //                           ),
  //                           child: Text(
  //                             textCancel,
  //                             style: AppTextStyle.blackS14Bold,
  //                           ),
  //                         ),
  //                       ),
  //                   ],
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  // /// Show error flushbar
  // void showErrorFlushbar({required String message}) {
  //   Flushbar(
  //     message: message,
  //     flushbarStyle: FlushbarStyle.GROUNDED,
  //     flushbarPosition: FlushbarPosition.TOP,
  //     icon: const Icon(
  //       Icons.error_outline,
  //       size: 28.0,
  //       color: Colors.white,
  //     ),
  //     titleColor: Colors.white,
  //     duration: const Duration(seconds: 3),
  //     backgroundColor: Colors.redAccent,
  //   ).show(context);
  // }
  //
  // void showSuccessFlushbar({required String message}) {
  //   Flushbar(
  //     message: message,
  //     flushbarStyle: FlushbarStyle.GROUNDED,
  //     flushbarPosition: FlushbarPosition.TOP,
  //     icon: const Icon(
  //       Icons.check_circle_outline,
  //       size: 28.0,
  //       color: Colors.white,
  //     ),
  //     titleColor: Colors.white,
  //     duration: const Duration(seconds: 3),
  //     backgroundColor: Colors.green,
  //   ).show(context);
  // }
}
