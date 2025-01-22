import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_task_dalex_troodon/domain/reward.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/shared/reward_subtitle_type.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class RewardCard extends StatelessWidget {
  final Reward reward;
  final RewardSubtitleType rewardSubtitleType;

  const RewardCard(
      {super.key, required this.reward, required this.rewardSubtitleType});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Theme.of(context).colorScheme.secondary,
      elevation: 4,
      shadowColor: Theme.of(context).colorScheme.onSurface,
      child: SizedBox(
        height: 134.h,
        child: Row(
          children: [
            SizedBox(
              width: 24.w,
            ),
            buildCardInfo(context),
            const Spacer(),
            buildCardImage(),
            SizedBox(
              width: 12.w,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardInfo(BuildContext context) {
    return SizedBox(
      width: 148.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reward.name,
            style: AppTextStyles.montserrat16W700
                .copyWith(color: getTextColor(context)),
          ),
          SizedBox(
            height: 8.h,
          ),
          buildCardSubtitle(context),
        ],
      ),
    );
  }

  Widget buildCardSubtitle(BuildContext context) {
    if (rewardSubtitleType == RewardSubtitleType.likes) {
      return buildCardLikesSubtitle(context);
    }
    return Text(reward.employeeNameAndSurname,
        style: AppTextStyles.montserrat12W400
            .copyWith(color: getTextColor(context)));
  }

  Row buildCardLikesSubtitle(BuildContext context) {
    return Row(
      children: [
        buildLikesImage(context),
        SizedBox(
          width: 8.w,
        ),
        Text(
          reward.likesNumber.toString(),
          style: AppTextStyles.montserrat16W700
              .copyWith(color: getTextColor(context)),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          'Лайкаутов',
          style: AppTextStyles.montserrat12W400
              .copyWith(color: getTextColor(context)),
        )
      ],
    );
  }

  SizedBox buildLikesImage(BuildContext context) {
    return SizedBox(
        width: 16.w,
        height: 16.w,
        child: SvgPicture.asset(
          'assets/images/like.svg',
          fit: BoxFit.contain,
          colorFilter:
              ColorFilter.mode(getTextColor(context), BlendMode.srcIn),
        ),
      );
  }

  Color getTextColor(BuildContext context) =>
      Theme.of(context).colorScheme.onSecondary;

  Widget buildCardImage() {
    return SizedBox(
      width: 104.w,
      height: 102.h,
      child: SvgPicture.asset('assets/images/reward.svg', fit: BoxFit.contain),
    );
  }
}
