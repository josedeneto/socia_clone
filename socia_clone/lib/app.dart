import 'package:flutter/material.dart';
import 'package:socia_clone/core/app_theme.dart';

import 'pages/home_page/home.dart';
import 'pages/sign_in_page/sign_in.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socia_clone',
      theme: AppTheme.theme,
      home: const SignIn(),
    );
  }
}