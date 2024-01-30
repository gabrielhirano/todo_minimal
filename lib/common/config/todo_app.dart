import 'package:flutter/material.dart';
import 'package:minimaltodoapp/common/constant/app_constant.dart';
import 'package:minimaltodoapp/common/layout/foundation/app_typography.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minimaltodoapp/features/authentication/views/screens/login_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: AppConstant.appName,
      // supportedLocales: const [
      //   Locale('pt', 'BR'),
      // ],
      theme: ThemeData(fontFamily: AppTypography.fontFamily),
      home: Observer(builder: (_) {
        return LoginScreen();
      }),
    );
  }
}
