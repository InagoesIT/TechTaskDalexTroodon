import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class LikesNumberColored extends StatelessWidget {
  final int likesNumber;

  const LikesNumberColored({super.key, required this.likesNumber});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(likesNumber.toString(),
          style: AppTextStyles.montserrat24W700.copyWith(
            color: Theme.of(context).colorScheme.outline,
          )),
      SizedBox(
        width: 4.5.w,
      ),
      SizedBox(
        width: 12.5.w,
        child: SvgPicture.asset(
          'assets/images/like.svg',
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.outline, BlendMode.srcIn),
        ),
      ),
      SizedBox(
        width: 16.w,
      )
    ]);
  }
}
