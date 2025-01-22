import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class RewardIdeasTitle extends StatelessWidget {
  const RewardIdeasTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Идеи наград',
            style: AppTextStyles.montserrat24W700
                .copyWith(color: Theme.of(context).colorScheme.onSurface)),
        SvgPicture.asset(
          'assets/images/settings.svg',
          fit: BoxFit.fitHeight,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onSurface, BlendMode.srcIn),
        ),
      ],
    );
  }
}
