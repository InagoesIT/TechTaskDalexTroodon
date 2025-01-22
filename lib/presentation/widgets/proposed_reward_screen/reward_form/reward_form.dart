import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/proposed_reward_screen/reward_form/approvals_count_button.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/proposed_reward_screen/reward_form/rejections_count_button.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/proposed_reward_screen/reward_form/reward_form_field.dart';

class RewardForm extends StatefulWidget {
  const RewardForm({super.key});

  @override
  State<RewardForm> createState() => _RewardFormState();
}

class _RewardFormState extends State<RewardForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const RewardFormField(
            labelText: 'Имя и фамилия сотрудника',
          ),
          SizedBox(
            height: 16.h,
          ),
          const RewardFormField(
            labelText: 'Должность',
          ),
          SizedBox(
            height: 16.h,
          ),
          const RewardFormField(
            labelText: 'Название Идеи',
          ),
          SizedBox(
            height: 16.h,
          ),
          const RewardFormField(
            labelText: 'Описание вашей награды',
          ),
          SizedBox(
            height: 33.h,
          ),
          buildButtons(context)
        ],
      ),
    );
  }

  Widget buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ApprovalsCountButton(
          onTap: () => approveClicked(context),
        ),
        const RejectionsCountButton()
      ],
    );
  }

  void approveClicked(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }
}
