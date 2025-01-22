import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/domain/reward.dart';
import 'package:tech_task_dalex_troodon/domain/reward_state.dart';
import 'package:tech_task_dalex_troodon/presentation/providers/rewards_provider.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/reward_ideas_screen/proposed_reward_button.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/reward_ideas_screen/rewards_filter_panel.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/shared/custom_app_bar.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/reward_ideas_screen/reward_ideas_title.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/shared/reward_card.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/shared/reward_subtitle_type.dart';

class RewardIdeasScreen extends StatelessWidget {
  const RewardIdeasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 22.w),
        child: Column(children: [
          SizedBox(
            height: 42.h,
          ),
          const RewardIdeasTitle(),
          SizedBox(
            height: 11.h,
          ),
          const RewardsFilterPanel(),
          SizedBox(
            height: 33.h,
          ),
          const ProposedRewardButton(),
          SizedBox(
            height: 34.h,
          ),
          RewardCard(
            reward: Reward(
              employeeNameAndSurname: 'Имя и фамилия',
              rewardState: RewardState.proposed,
              name: 'Награда название',
              likesNumber: 5,
            ),
            rewardSubtitleType: RewardSubtitleType.employeeNameAndSurname,
          ),
          SizedBox(
            height: 17.h,
          ),
          RewardCard(
            reward: mockReward,
            rewardSubtitleType: RewardSubtitleType.employeeNameAndSurname,
          )
        ]),
      ),
    );
  }
}
