import 'package:flutter/material.dart';
import 'package:project_setup/screen/admin/admin_page.dart';
import 'package:project_setup/screen/auth/auth_screen.dart';
import 'package:project_setup/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,
      home: const AuthScreen(),
    );
  }
}

