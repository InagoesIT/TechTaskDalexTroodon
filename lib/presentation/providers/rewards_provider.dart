import 'package:tech_task_dalex_troodon/domain/employee_feedback.dart';
import 'package:tech_task_dalex_troodon/domain/reward.dart';
import 'package:tech_task_dalex_troodon/domain/reward_state.dart';

Reward mockReward = Reward.withFeedback(
    employeeNameAndSurname: 'Имя и фамилия',
    rewardState: RewardState.proposed,
    name: 'Награда название',
    likesNumber: 5,
    feedbackList: List.filled(45, mockFeedback));

Reward mockArchivedReward = Reward.withFeedback(
    employeeNameAndSurname: 'Имя и фамилия',
    rewardState: RewardState.archived,
    name: 'Награда название',
    likesNumber: 5,
    feedbackList: List.filled(45, mockFeedback));

EmployeeFeedback mockFeedback =
    EmployeeFeedback(
    title: 'Lorem Ipsum', description: 'Введите ваши данные');
