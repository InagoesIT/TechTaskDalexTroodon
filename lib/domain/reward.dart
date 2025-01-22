import 'package:tech_task_dalex_troodon/domain/reward_state.dart';

class Reward {
  final int likesNumber;
  final String name;
  final String employeeNameAndSurname;
  final RewardState rewardState;

  Reward(
      {required this.rewardState,
      required this.likesNumber,
      required this.name,
      required this.employeeNameAndSurname});
}
