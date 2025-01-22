import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class RejectionsCountButton extends StatelessWidget {
  const RejectionsCountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: DecoratedBox(
        decoration: getBoxDecoration(context),
        child: SizedBox.fromSize(
          size: Size(155.w, 48.h),
          child: Center(
            child: Text('20 отказ', style: getTextStyle(context)),
          ),
        ),
      ),
    );
  }

  TextStyle getTextStyle(BuildContext context) {
    return AppTextStyles.montserrat16W500
        .copyWith(color: Theme.of(context).colorScheme.outlineVariant);
  }

  BoxDecoration getBoxDecoration(BuildContext context) {
    return BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(48.r));
  }
}
