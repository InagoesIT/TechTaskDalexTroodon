import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/reward_ideas_screen/likes_number_colored.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int numberOfLikes;
  final bool hasLikes;

  const CustomAppBar(
      {super.key, this.numberOfLikes = 0, this.hasLikes = false});

  @override
  Size get preferredSize => Size.fromHeight(53.h);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: getBoxDecoration(context),
        child: SizedBox(
          height: 53.h,
          child: Row(children: [
            SizedBox(
              width: 20.w,
            ),
            Text(
              'Логотип',
              style: getTitleStyle(context),
            ),
            const Spacer(),
            Visibility(
                visible: hasLikes,
                child: LikesNumberColored(likesNumber: numberOfLikes)),
            Image.asset('assets/images/logo.png', height: 44.h, width: 44.h),
            SizedBox(
              width: 16.w,
            )
          ]),
        ),
      ),
    );
  }

  TextStyle getTitleStyle(BuildContext context) {
    return AppTextStyles.montserrat24W700
        .copyWith(color: Theme.of(context).colorScheme.onTertiary);
  }

  BoxDecoration getBoxDecoration(BuildContext context) =>
      BoxDecoration(color: Theme.of(context).colorScheme.tertiary);
}
