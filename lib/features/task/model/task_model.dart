// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:minimaltodoapp/features/task/enum/task_state_enum.dart';

class TaskModel {
  final String description;

  final DateTime beginning;
  final DateTime end;

  final TaskState taskState;
  TaskModel({
    required this.description,
    required this.beginning,
    required this.end,
    required this.taskState,
  });

  TaskModel copyWith({
    String? description,
    DateTime? beginning,
    DateTime? end,
    TaskState? taskState,
  }) {
    return TaskModel(
      description: description ?? this.description,
      beginning: beginning ?? this.beginning,
      end: end ?? this.end,
      taskState: taskState ?? this.taskState,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'beginning': beginning.millisecondsSinceEpoch,
      'end': end.millisecondsSinceEpoch,
      'taskState': taskState.toString(),
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      description: map['description'] as String,
      beginning: DateTime.fromMillisecondsSinceEpoch(map['beginning'] as int),
      end: DateTime.fromMillisecondsSinceEpoch(map['end'] as int),
      taskState: map['taskState'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
