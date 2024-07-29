import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shoppe/app.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
 void main() async{
   https://shoppe-65821.firebaseapp.com/__/auth/handler
   WidgetsFlutterBinding.ensureInitialized();
   PackageInfo packageInfo = await PackageInfo.fromPlatform();
   String packageName = packageInfo.packageName;
 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
