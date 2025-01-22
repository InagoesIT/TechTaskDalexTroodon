import 'package:tech_task_dalex_troodon/domain/employee_feedback.dart';
import 'package:tech_task_dalex_troodon/domain/reward_state.dart';

class Reward {
  final int likesNumber;
  final String name;
  final String employeeNameAndSurname;
  final RewardState rewardState;
  final List<EmployeeFeedback> employeeFeedback =
      List<EmployeeFeedback>.empty(growable: true);

  Reward(
      {required this.rewardState,
      required this.likesNumber,
      required this.name,
      required this.employeeNameAndSurname});

  Reward.withFeedback(
      {required this.rewardState,
      required this.likesNumber,
      required this.name,
      required this.employeeNameAndSurname,
      required List<EmployeeFeedback> feedbackList}) {
    employeeFeedback.addAll(feedbackList);
  }

  void addFeedback(EmployeeFeedback feedback) {
    employeeFeedback.add(feedback);
  }

  void addFeedbackList(List<EmployeeFeedback> feedbackList) {
    employeeFeedback.addAll(feedbackList);
  }
}
