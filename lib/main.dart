import 'package:flutter/material.dart';
import 'package:minimaltodoapp/core/config/dependency_injection.dart';
import 'package:minimaltodoapp/core/config/todo_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const CircularProgressIndicator());

  await DependencyInjection.init();
  runApp(const TodoApp());
}
