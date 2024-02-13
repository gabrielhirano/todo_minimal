import 'package:flutter/material.dart';
import 'package:minimaltodoapp/features/task/view/widget/task_progress_card_widget.dart';

class ListTaskProgressWidget extends StatefulWidget {
  const ListTaskProgressWidget({super.key});

  @override
  State<ListTaskProgressWidget> createState() => _ListTaskProgressWidgetState();
}

class _ListTaskProgressWidgetState extends State<ListTaskProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TaskProgressCardWidget(check: true),
        buildLineProgress(),
        const TaskProgressCardWidget(check: true),
        buildLineProgress(),
        const TaskProgressCardWidget(check: false),
        buildLineProgress(),
        const TaskProgressCardWidget(check: false),
      ],
    );
  }

  Widget buildLineProgress() {
    return Container(
      margin: EdgeInsets.only(left: 16),
      height: 40,
      width: 5,
      color: Colors.white,
    );
  }
}
