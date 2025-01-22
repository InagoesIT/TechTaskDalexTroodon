import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/domain/reward.dart';
import 'package:tech_task_dalex_troodon/presentation/providers/rewards_provider.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/proposed_reward_screen/list_of_rewards_box.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/proposed_reward_screen/reward_form/reward_form.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/reward_ideas_screen/rewards_filter_panel.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/shared/custom_app_bar.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/shared/reward_card.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/shared/reward_subtitle_type.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class ProposedRewardScreen extends StatelessWidget {
  final Reward reward;

  const ProposedRewardScreen({super.key, required this.reward});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: CustomAppBar(
          hasLikes: true,
          numberOfLikes: reward.likesNumber,
        ),
        body: Padding(
            padding: EdgeInsets.only(left: 18.w, right: 22.w),
            child: ListView(children: [
              SizedBox(
                height: 42.h,
              ),
              Text('Предложенная награда',
                  style: AppTextStyles.montserrat24W700.copyWith(
                      color: Theme.of(context).colorScheme.onSurface)),
              SizedBox(
                height: 11.h,
              ),
              const RewardsFilterPanel(
                isDisabled: true,
              ),
              SizedBox(
                height: 24.h,
              ),
              RewardCard(
                  reward: mockReward,
                  rewardSubtitleType: RewardSubtitleType.likes),
              SizedBox(
                height: 12.h,
              ),
              const ListOfRewardsBox(),
              SizedBox(
                height: 24.h,
              ),
              const RewardForm()
            ])));
  }
}
