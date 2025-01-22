import 'package:flutter/material.dart';
import 'package:tech_task_dalex_troodon/domain/reward_state.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/reward_ideas_screen/rewards_filter_tab.dart';

class RewardsFilterPanel extends StatelessWidget {
  final bool isDisabled;

  const RewardsFilterPanel({super.key, this.isDisabled = false});

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isDisabled,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: const Row(
          children: [
            RewardsFilterTab(rewardState: RewardState.proposed),
            RewardsFilterTab(rewardState: RewardState.archived),
          ],
        ),
      ),
    );
  }
}
