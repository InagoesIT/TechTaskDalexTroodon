import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/domain/employee_feedback.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/proposed_reward_screen/employee_feedback_tile.dart';

class EmployeeFeedbackList extends StatelessWidget {
  final List<EmployeeFeedback> feedback;

  const EmployeeFeedbackList({super.key, required this.feedback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 296.h,
      child: ListView.separated(
        itemCount: feedback.length,
        itemBuilder: (context, index) =>
            EmployeeFeedbackTile(employeeFeedback: feedback[index]),
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
      ),
    );
  }
}
