import 'package:flutter/material.dart';
import 'package:minimaltodoapp/core/constant/app_constant.dart';
import 'package:minimaltodoapp/core/layout/foundation/app_typography.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:minimaltodoapp/features/home/views/screens/home_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstant.appName,
      // supportedLocales: const [
      //   Locale('pt', 'BR'),
      // ],
      theme: ThemeData(fontFamily: AppTypography.fontFamily),
      home: HomeScreen(),
    );
  }
}
