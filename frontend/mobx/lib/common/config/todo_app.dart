import 'package:flutter/material.dart';
import 'package:mobx/common/layout/foundation/app_typography.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      title: 'Minimal Todo',
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      theme: ThemeData(fontFamily: AppTypography.fontFamily),
    );
  }
}
