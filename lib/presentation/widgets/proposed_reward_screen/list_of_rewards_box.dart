import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/app_text_styles.dart';

class ListOfRewardsBox extends StatelessWidget {
  const ListOfRewardsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          boxShadow: getBoxShadows(context),
          borderRadius: BorderRadius.circular(5)),
      child: SizedBox(
        height: 40.h,
        child: Row(
          children: [
            SizedBox(
              width: 14.5.w,
            ),
            buildListIcon(context),
            SizedBox(
              width: 12.w,
            ),
            buildListText(context),
          ],
        ),
      ),
    );
  }

  SizedBox buildListIcon(BuildContext context) {
    return SizedBox(
        width: 20.w,
        child: SvgPicture.asset(
          'assets/images/list.svg',
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(getTextColor(context), BlendMode.srcIn),
        ));
  }

  Color getTextColor(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimary;

  List<BoxShadow> getBoxShadows(BuildContext context) {
    return [
      BoxShadow(
        color: Theme.of(context).colorScheme.onSurface.withAlpha(64),
        blurRadius: 4,
        offset: const Offset(0, 4),
        spreadRadius: 0,
      ),
    ];
  }

  buildListText(BuildContext context) {
    return Text(
      'Список наград сотрудника',
      style:
          AppTextStyles.montserrat16W700.copyWith(color: getTextColor(context)),
    );
  }
}
