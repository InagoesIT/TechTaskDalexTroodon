import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';
import 'package:tech_task_dalex_troodon/domain/reward_state.dart';

class RewardsFilterTab extends StatelessWidget {
  final RewardState rewardState;

  const RewardsFilterTab({super.key, required this.rewardState});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => print('miau'),
            child: SizedBox(
              height: 21.h,
              child: DecoratedBox(
                decoration: getBoxDecoration(context),
                child: Center(child: getTextStyle(context)),
              ),
            )));
  }

  Text getTextStyle(BuildContext context) {
    return Text(title,
        style: AppTextStyles.montserrat12W400
            .copyWith(color: getTextColor(context)));
  }

  BoxDecoration getBoxDecoration(BuildContext context) =>
      BoxDecoration(color: getBoxColor(context));

  bool get isClicked => rewardState == RewardState.proposed;

  Color getTextColor(BuildContext context) => isClicked
      ? Theme.of(context).colorScheme.onPrimary
      : Theme.of(context).colorScheme.onTertiary;

  Color getBoxColor(BuildContext context) => isClicked
      ? Theme.of(context).colorScheme.primary
      : Theme.of(context).colorScheme.tertiary;

  String get title =>
      rewardState == RewardState.proposed ? 'Предложенные' : 'Архив';
}
