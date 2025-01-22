import 'package:flutter/material.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class RewardFormField extends StatefulWidget {
  final String labelText;

  const RewardFormField({super.key, required this.labelText});

  @override
  State<RewardFormField> createState() => _RewardFormFieldState();
}

class _RewardFormFieldState extends State<RewardFormField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _controller,
      style: AppTextStyles.montserrat18W700
          .copyWith(color: Theme.of(context).colorScheme.onSurface),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 2),
          enabledBorder: getInputBorder(),
          focusedBorder: getInputBorder(),
          errorBorder: getErrorBorder(),
          focusedErrorBorder: getErrorBorder(),
          errorStyle: getTextStyleForError(context),
          labelText: widget.labelText,
          labelStyle: getTextStyleForLabel(context),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: getTextStyleForLabel(context)),
    );
  }

  String? validate(value) {
    if (value == null || value.isEmpty) {
      return 'Это поле не может быть пустым';
    }
    return null;
  }

  TextStyle getTextStyleForLabel(BuildContext context) {
    return AppTextStyles.montserrat12W400
        .copyWith(color: Theme.of(context).colorScheme.onSurface);
  }

  TextStyle getTextStyleForError(BuildContext context) {
    return AppTextStyles.montserrat10W400
        .copyWith(color: Theme.of(context).colorScheme.error);
  }

  UnderlineInputBorder getInputBorder() {
    return UnderlineInputBorder(
        borderSide: BorderSide(
      width: 2,
      color: Theme.of(context).colorScheme.outline,
    ));
  }

  UnderlineInputBorder getErrorBorder() {
    return UnderlineInputBorder(
        borderSide: BorderSide(
      width: 2,
      color: Theme.of(context).colorScheme.error,
    ));
  }
}
