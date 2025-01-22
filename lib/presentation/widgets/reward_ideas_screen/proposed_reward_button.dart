import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/presentation/providers/rewards_provider.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/proposed_reward_screen/proposed_reward_screen.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class ProposedRewardButton extends StatelessWidget {
  const ProposedRewardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      width: Size.infinite.width,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProposedRewardScreen(reward: mockReward))),
        child: DecoratedBox(
          decoration: getBoxDecoration(context),
          child: Center(
            child: Text(
              'есть предложенная награда',
              style: getTextStyle(context),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration getBoxDecoration(BuildContext context) =>
      BoxDecoration(color: Theme.of(context).colorScheme.error);

  TextStyle getTextStyle(BuildContext context) {
    return AppTextStyles.montserrat12W400
        .copyWith(color: Theme.of(context).colorScheme.onError);
  }
}
