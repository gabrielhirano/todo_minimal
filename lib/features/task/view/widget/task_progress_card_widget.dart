import 'package:flutter/material.dart';
import 'package:minimaltodoapp/core/layout/component/app_text.dart';
import 'package:minimaltodoapp/features/task/model/task_model.dart';

class TaskProgressCardWidget extends StatefulWidget {
  // final TaskModel task;
  final bool check;
  const TaskProgressCardWidget({
    super.key,
    required this.check,
    // required this.task,
  });

  @override
  State<TaskProgressCardWidget> createState() => _TaskProgressCardWidgetState();
}

class _TaskProgressCardWidgetState extends State<TaskProgressCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
              color: !widget.check ? Colors.transparent : Colors.white,
            ),
            child: !widget.check
                ? null
                : const Icon(
                    Icons.check,
                    color: Color(0xFF333333),
                    size: 20,
                  ),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: 'Ukulele Hawaii Festival',
                textStyle: AppTextStyle.paragraphLargeBold,
                textColor: Color(0xFFCCCCCC),
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_sharp,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  AppText(
                    text: '03:00 pm - 04:00 pm',
                    textStyle: AppTextStyle.paragraphMedium,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
