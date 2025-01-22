import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/domain/employee_feedback.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class EmployeeFeedbackTile extends StatelessWidget {
  final EmployeeFeedback employeeFeedback;

  const EmployeeFeedbackTile({super.key, required this.employeeFeedback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: Row(
        children: [
          buildLeadingImage(),
          SizedBox(width: 24.w),
          buildInfo(context)
        ],
      ),
    );
  }

  Widget buildLeadingImage() {
    return Image.asset(
      'assets/images/employee.png',
      fit: BoxFit.fitHeight,
    );
  }

  Widget buildInfo(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildTitle(context),
          SizedBox(
            height: 2.h,
          ),
          buildDescription(context)
        ],
      ),
    );
  }

  Widget buildTitle(BuildContext context) {
    return Text(
      employeeFeedback.title,
      style:
          AppTextStyles.montserrat18W700.copyWith(color: getTextColor(context)),
    );
  }

  Widget buildDescription(BuildContext context) {
    return Text(
      employeeFeedback.description,
      style:
          AppTextStyles.montserrat12W400.copyWith(color: getTextColor(context)),
    );
  }

  Color getTextColor(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface;
}
