import 'package:savetime/Pages/MenuPage/utils/Theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'Pages/loginPage/registr_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: AppTheme.darkTheme(),
      home: const FirstHomePage(),
    );
  }
}
