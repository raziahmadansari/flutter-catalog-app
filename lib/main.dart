import 'package:flutter/material.dart';
import 'package:product_catelog/screens/home_page.dart';
import 'package:product_catelog/screens/login_page.dart';
import 'package:product_catelog/utils/routes.dart';
import 'package:product_catelog/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      debugShowCheckedModeBanner: false, // to remove debug banner
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.darkTheme,
      initialRoute: AppRoutes.homeRoute,
      routes: {
        '/': (context) => const Login(),
        AppRoutes.homeRoute: (context) => const HomePage(),
        AppRoutes.loginRoute: (context) => const Login(),
      },
    );
  }
}
