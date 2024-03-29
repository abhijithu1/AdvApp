import 'package:advapp/Contents/views/home.dart';
import 'package:advapp/approval/views/approval.dart';
import 'package:advapp/auth/views/login.dart';
import 'package:advapp/constants.dart';
import 'package:advapp/studentview/views/studentview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Advisory",
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => const AuthPage()),
        GetPage(
          name: '/home',
          page: () => const Home(),
        ),
        GetPage(
            name: '/approval',
            page: () => const ApprovalPage(
                  title: 0,
                )),
        GetPage(name: "/students", page: () => const StudentView())
      ],
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: AdvColors.appbar,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
      ),
    );
  }
}
