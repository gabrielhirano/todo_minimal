import 'category.dart';

enum TaskStatus { todo, inprogress, done }

class Task {
  final String name;
  final TaskStatus status;
  final List<Category> categories;
  final bool remind;
  final DateTime? startDate;
  final DateTime? endtDate;
  final DateTime? startHour;
  final DateTime? endHour;

  Task({
    required this.name,
    required this.status,
    required this.categories,
    required this.remind,
    this.startDate,
    this.endtDate,
    this.startHour,
    this.endHour,
  });
}
