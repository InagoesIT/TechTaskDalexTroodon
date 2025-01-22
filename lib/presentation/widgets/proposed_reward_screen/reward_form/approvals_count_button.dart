import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class ApprovalsCountButton extends StatelessWidget {
  final void Function()? onTap;

  const ApprovalsCountButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(48.r)),
        child: SizedBox.fromSize(
          size: Size(155.w, 48.h),
          child: Center(
            child: Text('45 согласны', style: getTextStyle(context)),
          ),
        ),
      ),
    );
  }

  TextStyle getTextStyle(BuildContext context) {
    return AppTextStyles.montserrat16W500
        .copyWith(color: Theme.of(context).colorScheme.onPrimary);
  }
}
